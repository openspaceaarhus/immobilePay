#include "Valuta.hpp"

Valuta::Valuta()
	:denominator( 0 )
{
}

Valuta::Valuta(int integer)
	:denominator( integer * 100 )
{
}

Valuta operator+(Valuta lhs, const Valuta &rhs)
{
	lhs += rhs;
	return lhs;
}

Valuta operator-(Valuta lhs, const Valuta &rhs)
{
	lhs -= rhs;
	return lhs;
}

Valuta::Valuta(double fractional)
	:denominator( static_cast< int >( fractional * 100 ) )
{
}

Valuta& Valuta::operator+=(const Valuta other)
{
	denominator += other.denominator;
	return *this;

}

Valuta& Valuta::operator-=(const Valuta other)
{
	denominator -= other.denominator;
	return *this;
}


