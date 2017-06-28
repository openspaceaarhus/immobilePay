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
		Valuta& operator=( const Valuta& other ) = default;
		Valuta& operator=( Valuta&& other ) = default;
		Valuta( const Valuta& other ) = default;
		Valuta( Valuta&& other ) = default;
		bool operator==( const Valuta other );
		bool operator!=( const Valuta other );
		bool operator>( const Valuta other );
		bool operator<( const Valuta other );
		bool operator<=( const Valuta other );
		bool operator>=( const Valuta other );
		double printOut( void );
		friend Valuta operator+( Valuta lhs, const Valuta& rhs );
		friend Valuta operator-( Valuta lhs, const Valuta& rhs );
	private:
		int denominator;
};


#endif // VALUTA_HPP
