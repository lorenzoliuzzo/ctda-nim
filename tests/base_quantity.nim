from ../src/core/base_quantity import defBaseQuantity, SIBasis, SIDerivedBasis, Basis

echo "SI Base Quantities"
for base in SIBasis:
    echo base

echo "SI Derived Quantities"
for base in SIDerivedBasis:
    echo base

echo "Base Quantities"
for base in Basis:
    echo base