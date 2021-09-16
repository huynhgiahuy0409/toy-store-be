package com.laptrinhjavaweb.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.FavoriteProductEntity;
import com.laptrinhjavaweb.entity.ProductEntity;
import com.laptrinhjavaweb.entity.UserEntity;
import com.laptrinhjavaweb.repository.FavoriteProductRepository;
import com.laptrinhjavaweb.service.IFavoriteProductService;

@Service
public class FavoriteProductService implements IFavoriteProductService {
	@Autowired
	private FavoriteProductRepository favoriteProductRepos;

	@Override
	public FavoriteProductEntity saveAndFlush(FavoriteProductEntity fp) {
		// TODO Auto-generated method stub
		return this.favoriteProductRepos.saveAndFlush(fp);
	}

	@Override
	public FavoriteProductEntity findByUserAndProduct(UserEntity user, ProductEntity product) {
		// TODO Auto-generated method stub
		return this.favoriteProductRepos.findByUserAndProduct(user, product);
	}

	@Override
	public List<FavoriteProductEntity> findAll(Specification<FavoriteProductEntity> spec, Pageable pageable) {
		// TODO Auto-generated method stub
		return this.favoriteProductRepos.findAll(spec, pageable).getContent();
	}

	@Override
	public long count(Specification<FavoriteProductEntity> spec) {
		// TODO Auto-generated method stub
		return this.favoriteProductRepos.count(spec);
	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		this.favoriteProductRepos.delete(id);
	}

}
