import React from 'react';
import { ShoppingCart } from 'lucide-react';

interface FloatingCartButtonProps {
  itemCount: number;
  onCartClick: () => void;
}

const FloatingCartButton: React.FC<FloatingCartButtonProps> = ({ itemCount, onCartClick }) => {
  if (itemCount === 0) return null;

  return (
    <button
      onClick={onCartClick}
      className="fixed bottom-6 right-6 bg-brand-red text-white p-5 rounded-full shadow-brand-lg hover:bg-brand-red-dark transition-all duration-300 transform hover:scale-110 z-40 md:hidden animate-bounce-gentle"
    >
      <div className="relative">
        <ShoppingCart className="h-7 w-7" />
        <span className="absolute -top-3 -right-3 bg-brand-green text-white text-sm rounded-full h-7 w-7 flex items-center justify-center font-bold shadow-green ring-2 ring-white">
          {itemCount}
        </span>
      </div>
    </button>
  );
};

export default FloatingCartButton;