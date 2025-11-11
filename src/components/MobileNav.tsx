import React from 'react';
import { useCategories } from '../hooks/useCategories';

interface MobileNavProps {
  activeCategory: string;
  onCategoryClick: (categoryId: string) => void;
}

const MobileNav: React.FC<MobileNavProps> = ({ activeCategory, onCategoryClick }) => {
  const { categories } = useCategories();

  return (
    <div className="sticky top-20 z-40 bg-white border-b border-gray-200 md:hidden shadow-md">
      <div className="flex overflow-x-auto scrollbar-hide px-4 py-4 gap-3">
        {categories.map((category) => (
          <button
            key={category.id}
            onClick={() => onCategoryClick(category.id)}
            className={`flex-shrink-0 flex items-center space-x-2 px-5 py-2.5 rounded-full transition-all duration-300 font-semibold text-sm whitespace-nowrap ${
              activeCategory === category.id
                ? 'bg-brand-red text-white shadow-brand'
                : 'bg-gray-100 text-gray-700 hover:bg-brand-green hover:text-white hover:shadow-green'
            }`}
          >
            <span className="text-lg">{category.icon}</span>
            <span>{category.name}</span>
          </button>
        ))}
      </div>
    </div>
  );
};

export default MobileNav;