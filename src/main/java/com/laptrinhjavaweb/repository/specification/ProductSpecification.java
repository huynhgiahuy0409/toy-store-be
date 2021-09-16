package com.laptrinhjavaweb.repository.specification;

import java.util.Arrays;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Join;
import javax.persistence.criteria.Order;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.data.jpa.domain.Specification;

import com.laptrinhjavaweb.entity.ProductEntity;

public class ProductSpecification implements Specification<ProductEntity> {
	private SearchCriteria criteria;

	public ProductSpecification(SearchCriteria criteria) {
		super();
		this.criteria = criteria;
	}

	@Override
	public Predicate toPredicate(Root<ProductEntity> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
		// TODO Auto-generated method stub
		/* ex: price > 10000 */
		if (criteria.getOperation().equalsIgnoreCase(">=")) {
			return cb.greaterThanOrEqualTo(root.<String>get(criteria.getKey()), criteria.getValue().toString());
		}
		if (criteria.getOperation().equalsIgnoreCase("=")) {
			return cb.equal(root.<String>get(criteria.getKey()), criteria.getValue());
		} else if (criteria.getOperation().equalsIgnoreCase("<")) {
			return cb.lessThanOrEqualTo(root.<String>get(criteria.getKey()), criteria.getValue().toString());
		} else if (criteria.getOperation().equalsIgnoreCase("in")) {
			Join<ProductEntity, Object> join = root.join(criteria.getKey());
			query.distinct(true);
			return cb.in(join.get("id")).value(criteria.getValue());
		} else if (criteria.getOperation().equalsIgnoreCase("between")) {
			List<Long> priceRange = (List<Long>) criteria.getValue();
			long min =  priceRange.get(0);
			long max =  priceRange.get(1);
			return cb.between(root.get(criteria.getKey()), min, max);
		} else if (criteria.getOperation().equalsIgnoreCase(":")) {
			if (root.get(criteria.getKey()).getJavaType() == String.class) {
			} else {
				return cb.equal(root.get(criteria.getKey()), criteria.getValue());
			}
		}
		return null;
	}

}
