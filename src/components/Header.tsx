import React from 'react';
import { ShoppingCart, Package } from 'lucide-react';
import { useSiteSettings } from '../hooks/useSiteSettings';
import { useCategories } from '../hooks/useCategories';

interface HeaderProps {
  cartItemsCount: number;
  onCartClick: () => void;
  onMenuClick: () => void;
  onOrderTrackingClick?: () => void;
  onCategoryClick?: (categoryId: string) => void;
  selectedCategory?: string;
}

const Header: React.FC<HeaderProps> = ({ cartItemsCount, onCartClick, onMenuClick, onOrderTrackingClick, onCategoryClick, selectedCategory }) => {
  const { siteSettings, loading } = useSiteSettings();
  const { categories, loading: categoriesLoading } = useCategories();

  return (
    <header className="sticky top-0 z-50 bg-white shadow-md">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between h-20">
          {/* Logo & Brand Name */}
          <button 
            onClick={onMenuClick}
            className="flex items-center space-x-3 hover:opacity-90 transition-opacity duration-200"
          >
            {loading ? (
              <div className="w-12 h-12 bg-gray-200 rounded-full animate-pulse" />
            ) : (
              <img 
                src={siteSettings?.site_logo || "/logo.jpg"} 
                alt={siteSettings?.site_name || "Beracah Cafe"}
                className="w-12 h-12 rounded-full object-cover ring-2 ring-brand-red shadow-brand"
                onError={(e) => {
                  e.currentTarget.src = "/logo.jpg";
                }}
              />
            )}
            <h1 className="text-2xl md:text-3xl font-bold text-black font-inter">
              {loading ? (
                <div className="w-32 h-7 bg-gray-200 rounded animate-pulse" />
              ) : (
                <span>
                  <span className="text-brand-red">{siteSettings?.site_name?.split(' ')[0] || "ATM"}</span>
                  {siteSettings?.site_name && siteSettings.site_name.split(' ').length > 1 && (
                    <span className="text-brand-green ml-2">{siteSettings.site_name.split(' ').slice(1).join(' ')}</span>
                  )}
                </span>
              )}
            </h1>
          </button>
          
          {/* Desktop Navigation */}
          <nav className="hidden md:flex items-center space-x-6">
            {categoriesLoading ? (
              <div className="flex space-x-6">
                {[1, 2, 3, 4].map((i) => (
                  <div key={i} className="w-20 h-4 bg-gray-200 rounded animate-pulse" />
                ))}
              </div>
            ) : (
              <>
                <button
                  onClick={() => onCategoryClick?.('all')}
                  className={`relative px-3 py-2 text-sm font-semibold transition-all duration-300 ${
                    selectedCategory === 'all' || !selectedCategory
                      ? 'text-brand-red'
                      : 'text-gray-600 hover:text-brand-red'
                  }`}
                >
                  All
                  {(selectedCategory === 'all' || !selectedCategory) && (
                    <span className="absolute bottom-0 left-0 right-0 h-0.5 bg-brand-red rounded-full"></span>
                  )}
                </button>
                {categories.map((category) => (
                  <button
                    key={category.id}
                    onClick={() => onCategoryClick?.(category.id)}
                    className={`relative flex items-center space-x-1.5 px-3 py-2 text-sm font-semibold transition-all duration-300 ${
                      selectedCategory === category.id
                        ? 'text-brand-red'
                        : 'text-gray-600 hover:text-brand-red'
                    }`}
                  >
                    <span className="text-base">{category.icon}</span>
                    <span>{category.name}</span>
                    {selectedCategory === category.id && (
                      <span className="absolute bottom-0 left-0 right-0 h-0.5 bg-brand-red rounded-full"></span>
                    )}
                  </button>
                ))}
              </>
            )}
          </nav>

          {/* Action Buttons */}
          <div className="flex items-center space-x-3">
            <button 
              onClick={onOrderTrackingClick}
              className="flex items-center gap-2 px-4 py-2.5 text-brand-green hover:text-white hover:bg-brand-green border-2 border-brand-green rounded-lg transition-all duration-300 text-sm font-semibold shadow-sm hover:shadow-green"
            >
              <Package className="h-5 w-5" />
              <span className="hidden sm:inline">Track Order</span>
            </button>
            <button 
              onClick={onCartClick}
              className="relative p-3 text-brand-red hover:bg-red-50 rounded-full transition-all duration-300 shadow-sm hover:shadow-brand"
            >
              <ShoppingCart className="h-6 w-6" />
              {cartItemsCount > 0 && (
                <span className="absolute -top-1 -right-1 bg-brand-green text-white text-xs font-bold rounded-full h-6 w-6 flex items-center justify-center animate-bounce-gentle shadow-green">
                  {cartItemsCount}
                </span>
              )}
            </button>
          </div>
        </div>
      </div>
    </header>
  );
};

export default Header;