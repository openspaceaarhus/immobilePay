#ifndef VALUTA_HPP
#define VALUTA_HPP

class Valuta
{
	public:
		Valuta();
		Valuta( int integer );
		Valuta( double fractional );
		Valuta& operator+=( const Valuta other );
		Valuta& operator-=( const Valuta other );
		Valuta& operator=( const Valuta& other );
		Valuta& operator=( Valuta&& other );
		Valuta( const Valuta& other );
		Valuta( Valuta&& other );
		bool operator>( const Valuta other );
		bool operator<( const Valuta other );
		bool operator<=( const Valuta other );
		bool operator>=( const Valuta other );
		friend Valuta operator+( Valuta lhs, const Valuta& rhs );
		friend Valuta operator-( Valuta lhs, const Valuta& rhs );
	private:
		int denominator;
};


#endif // VALUTA_HPP
