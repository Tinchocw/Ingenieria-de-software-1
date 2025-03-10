!classDefinition: #NumeroTest category: #Numbers!
TestCase subclass: #NumeroTest
	instanceVariableNames: 'zero one two four oneFifth oneHalf five twoFifth twoTwentyfifth fiveHalfs three eight negativeOne negativeTwo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numbers'!

!NumeroTest methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:50'!
test01isZeroReturnsTrueWhenAskToZero

	self assert: zero isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:58'!
test02isZeroReturnsFalseWhenAskToOthersButZero

	self deny: one isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test03isOneReturnsTrueWhenAskToOne

	self assert: one isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test04isOneReturnsFalseWhenAskToOtherThanOne

	self deny: zero isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:39:57'!
test05EnteroAddsWithEnteroCorrectly

	self assert: two equals: one + one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:10'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: four equals: two * two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:22'!
test07EnteroDividesEnteroCorrectly

	self assert: one equals: two / two! !

!NumeroTest methodsFor: 'tests' stamp: 'mc 4/15/2024 23:27:33'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths := (Entero with: 7) / (Entero with: 10).

	self assert: sevenTenths equals: oneFifth + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:20'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: twoTwentyfifth equals: oneFifth * twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:34'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: fiveHalfs equals: oneHalf / oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'mc 4/15/2024 23:27:33'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: (Entero with: 6) / (Entero with: 5) equals: one + oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'mc 4/15/2024 23:27:33'!
test12FraccionAddsEnteroCorrectly

	self assert: (Entero with: 6) / (Entero with: 5) equals: oneFifth + one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:16'!
test13EnteroMultipliesFraccionCorrectly

	self assert: twoFifth equals: two * oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:27'!
test14FraccionMultipliesEnteroCorrectly

	self assert: twoFifth equals: oneFifth * two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:40'!
test15EnteroDividesFraccionCorrectly

	self assert: fiveHalfs equals: one / twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:58'!
test16FraccionDividesEnteroCorrectly

	self assert: twoTwentyfifth equals: twoFifth / five! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:38'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:39'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:44:53'!
test19AddingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:13'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: one equals: (two/five) * (five/two)! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:27'!
test21DividingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf / oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:40'!
test22DividingEnterosCanReturnAFraccion

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:50:17'!
test23CanNotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: Numero canNotDivideByZeroErrorDescription equals: anError messageText ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:50:32'!
test24CanNotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: Numero canNotDivideByZeroErrorDescription equals: anError messageText ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test25AFraccionCanNotBeZero

	self deny: oneHalf isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test26AFraccionCanNotBeOne

	self deny: oneHalf isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:21'!
test27EnteroSubstractsEnteroCorrectly

	self assert: two equals: three - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:36'!
test28FraccionSubstractsFraccionCorrectly
	
	self assert: oneFifth equals: twoFifth - oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:50'!
test29EnteroSubstractsFraccionCorrectly

	self assert: oneHalf equals: one - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'mc 4/15/2024 23:27:33'!
test30FraccionSubstractsEnteroCorrectly

	| sixFifth |
	
	sixFifth := (Entero with: 6) / (Entero with: 5).
	
	self assert: oneFifth equals: sixFifth - one! !

!NumeroTest methodsFor: 'tests' stamp: 'mc 4/15/2024 23:27:33'!
test31SubstractingFraccionesCanReturnAnEntero

	| threeHalfs |
	
	threeHalfs := (Entero with: 3) / (Entero with: 2).
	
	self assert: one equals: threeHalfs - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:44'!
test32SubstractingSameEnterosReturnsZero

	self assert: zero equals: one - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:59'!
test33SubstractingSameFraccionesReturnsZero

	self assert: zero equals: oneHalf - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'mc 4/15/2024 23:27:33'!
test34SubstractingAHigherValueToANumberReturnsANegativeNumber

	| negativeThreeHalfs |
	
	negativeThreeHalfs := (Entero with: -3) / (Entero with: 2).	

	self assert: negativeThreeHalfs equals: one - fiveHalfs! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:45'!
test35FibonacciZeroIsOne

	self assert: one equals: zero fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:58'!
test36FibonacciOneIsOne

	self assert: one equals: one fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:24'!
test37FibonacciEnteroReturnsAddingPreviousTwoFibonacciEnteros

	self assert: five equals: four fibonacci.
	self assert: three equals: three fibonacci. 
	self assert: five fibonacci equals: four fibonacci + three fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'mc 4/15/2024 23:27:33'!
test38FibonacciNotDefinedForNegativeNumbers

	self 
		should: [negativeOne fibonacci]
		raise: Error
		withExceptionDo: [ :anError | self assert: Entero negativeFibonacciErrorDescription equals: anError messageText ]! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:17'!
test39NegationOfEnteroIsCorrect

	self assert: negativeTwo equals: two negated
		! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:53:27'!
test40NegationOfFraccionIsCorrect

	self assert: negativeOne / two equals: oneHalf negated ! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:11'!
test41SignIsCorrectlyAssignedToFractionWithTwoNegatives

	self assert: oneHalf equals: (negativeOne / negativeTwo)! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:17'!
test42SignIsCorrectlyAssignedToFractionWithNegativeDivisor

	self assert: oneHalf negated equals: (one / negativeTwo)! !


!NumeroTest methodsFor: 'setup' stamp: 'mg 4/16/2024 20:20:57'!
setUp
	zero := Entero with: 0.
	one := Entero with: 1.
	two := Entero with: 2.
	three:= Entero with: 3.
	four := Entero with: 4.
	five := Entero with: 5.
	eight := Entero with: 8.
	negativeOne := Entero with: -1.
	negativeTwo := Entero with: -2.
	
	oneHalf := one / two.
	oneFifth := one / five.
	twoFifth := two / five.
	twoTwentyfifth := two / (Entero with: 25).
	fiveHalfs := five / two.
	! !


!classDefinition: #Numero category: #Numbers!
Object subclass: #Numero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numbers'!

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
* aMultiplicand

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'mg 4/17/2024 10:49:12'!
+ anAddend

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'mc 4/17/2024 14:28:56'!
- aSubtrahend

	"Para mostrar nuestra implementación de doble dispatch dejamos en la clases hijas los métodos correspondientes a DD comentados así
	 pueden ver nuestra implementación e hicimos una llamada a super para que se llame este método a la hora de responder el mensaje, 
	esto en realidad quedaría como un método concreto y no estaría implementado en las clases hijas "
	
	"self subclassResponsibility"
	
	^ self  + aSubtrahend negated! !

!Numero methodsFor: 'arithmetic operations' stamp: 'mg 4/17/2024 10:39:07'!
/ aDivisor

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'mg 4/15/2024 23:43:58'!
inverse

	self subclassResponsibility! !

!Numero methodsFor: 'arithmetic operations' stamp: 'mc 4/15/2024 23:27:33'!
negated
	
	^self * (Entero with: -1)! !


!Numero methodsFor: 'testing' stamp: 'NR 9/23/2018 23:36:49'!
isNegative

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isOne

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isZero

	self subclassResponsibility ! !


!Numero methodsFor: 'private' stamp: 'HernanWilkinson 5/7/2016 22:48'!
invalidNumberType

	self error: self class invalidNumberTypeErrorDescription! !


!Numero methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:01:03'!
addAFraction: aAugend

	self subclassResponsibility! !

!Numero methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:02:54'!
addAnInteger: aAugend

	self subclassResponsibility! !

!Numero methodsFor: 'arithmetic methods' stamp: 'mg 4/17/2024 10:21:36'!
divideAFraction: aDividend

	self subclassResponsibility! !

!Numero methodsFor: 'arithmetic methods' stamp: 'mg 4/15/2024 23:57:29'!
divideAnInteger: aDividend

	self subclassResponsibility! !

!Numero methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:01:45'!
multiplyAFraction: aMultiplier

	self subclassResponsibility! !

!Numero methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:01:54'!
multiplyAnInteger: aMultiplier

	self subclassResponsibility! !

!Numero methodsFor: 'arithmetic methods' stamp: 'mc 4/17/2024 14:12:44'!
subtractFromAFraction: aMinuend

	self subclassResponsibility! !

!Numero methodsFor: 'arithmetic methods' stamp: 'mc 4/17/2024 14:13:20'!
subtractFromAnInteger: aMinuend

	self subclassResponsibility! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numero class' category: #Numbers!
Numero class
	instanceVariableNames: ''!

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:47:38'!
canNotDivideByZeroErrorDescription

	^'No se puede Dividir por Cero'! !

!Numero class methodsFor: 'error descriptions' stamp: 'mg 4/16/2024 00:09:33'!
invalidNumberTypeErrorDescription

	^ 'Tipo de Número Inválido'! !


!classDefinition: #Entero category: #Numbers!
Numero subclass: #Entero
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numbers'!

!Entero methodsFor: 'arithmetic operations' stamp: 'mg 4/15/2024 23:56:31'!
* aMultiplicand 
 
	^aMultiplicand multiplyAnInteger: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 20:26:00'!
+ anAddend 

	^anAddend addAnInteger: self.! !

!Entero methodsFor: 'arithmetic operations' stamp: 'mc 4/17/2024 14:29:05'!
- aSubtrahend

	"^aSubtrahend  subtractFromAnInteger: self"
	^super - aSubtrahend.
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'mg 4/17/2024 10:36:20'!
/ aDivisor

	^aDivisor divideAnInteger: self! !

!Entero methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:05:18'!
fibonacci

	self subclassResponsibility! !

!Entero methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:07:05'!
inverse	
	| one |
	
	one := Entero with: 1.
	
	^one / self! !


!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 21:01'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:17'!
hash

	^value hash! !


!Entero methodsFor: 'initialization' stamp: 'JS 5/5/2022 03:55:37'!
initializeWith: aValue 
	
	value := aValue! !


!Entero methodsFor: 'accessing' stamp: 'mg 4/16/2024 00:05:30'!
integerValue

	^value! !


!Entero methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:53:19'!
printOn: aStream

	aStream print: value ! !


!Entero methodsFor: 'testing' stamp: 'mc 4/15/2024 23:06:34'!
isNegative

	self subclassResponsibility! !

!Entero methodsFor: 'testing' stamp: 'mc 4/15/2024 23:06:41'!
isOne

	self subclassResponsibility! !

!Entero methodsFor: 'testing' stamp: 'mc 4/15/2024 23:06:50'!
isZero

	self subclassResponsibility! !


!Entero methodsFor: 'arithmetic operations - private' stamp: 'mg 4/15/2024 23:44:29'!
// aDivisor 

	^self class with: value // aDivisor integerValue! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:00'!
greatestCommonDivisorWith: anEntero 
	
	^self class with: (value gcd: anEntero integerValue)! !


!Entero methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:04:30'!
addAFraction: aAugend

	^(aAugend numerator + (aAugend denominator * self)) / aAugend denominator.! !

!Entero methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:03:01'!
addAnInteger: aAugend  

	^self class with: aAugend  integerValue + value.
! !

!Entero methodsFor: 'arithmetic methods' stamp: 'mg 4/17/2024 10:21:15'!
divideAFraction: aDividend
	
	^(aDividend numerator) / (self * aDividend denominator)
	! !

!Entero methodsFor: 'arithmetic methods' stamp: 'mg 4/15/2024 23:54:34'!
divideAnInteger: aDividend

	^Fraccion with: aDividend over: self.
	! !

!Entero methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:06:00'!
multiplyAFraction: aMultiplier
	
	^(aMultiplier numerator * self)  / (aMultiplier denominator).
	! !

!Entero methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:06:05'!
multiplyAnInteger: aMultiplier

	^self class with: value * aMultiplier integerValue. 
	! !

!Entero methodsFor: 'arithmetic methods' stamp: 'mc 4/17/2024 14:12:44'!
subtractFromAFraction: aMinuend
	^(aMinuend numerator - (self * aMinuend denominator)) / (aMinuend denominator).	! !

!Entero methodsFor: 'arithmetic methods' stamp: 'mc 4/17/2024 14:13:20'!
subtractFromAnInteger: aMinuend
	^self class with: aMinuend integerValue - value.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Entero class' category: #Numbers!
Entero class
	instanceVariableNames: ''!

!Entero class methodsFor: 'instance creation' stamp: 'mg 4/16/2024 00:10:44'!
canRepresent: anInteger

	self subclassResponsibility! !

!Entero class methodsFor: 'instance creation' stamp: 'mg 4/16/2024 00:09:39'!
negativeFibonacciErrorDescription

	^ ' Fibonacci no está definido aquí para Enteros Negativos'! !

!Entero class methodsFor: 'instance creation' stamp: 'mg 4/16/2024 00:11:39'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
	
	^(Entero subclasses detect:[
		:anIntegerSubclass | anIntegerSubclass canRepresent: aValue ] ) new initializeWith: aValue.! !


!classDefinition: #IntegerGreaterThanOne category: #Numbers!
Entero subclass: #IntegerGreaterThanOne
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numbers'!

!IntegerGreaterThanOne methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:06:31'!
fibonacci
	| one two |
	
	one := Entero with: 1.
	two := Entero with: 2.
	
	^ (self - one) fibonacci + (self - two) fibonacci
		! !


!IntegerGreaterThanOne methodsFor: 'testing' stamp: 'mg 4/16/2024 00:06:34'!
isNegative

	^false.! !

!IntegerGreaterThanOne methodsFor: 'testing' stamp: 'mg 4/16/2024 00:06:38'!
isOne

	^false.! !

!IntegerGreaterThanOne methodsFor: 'testing' stamp: 'mg 4/16/2024 00:06:40'!
isZero

	^false.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IntegerGreaterThanOne class' category: #Numbers!
IntegerGreaterThanOne class
	instanceVariableNames: ''!

!IntegerGreaterThanOne class methodsFor: 'instance creation' stamp: 'mg 4/16/2024 00:12:03'!
canRepresent: anInteger
	^anInteger > 1.! !


!classDefinition: #IntegerNegative category: #Numbers!
Entero subclass: #IntegerNegative
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numbers'!

!IntegerNegative methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:07:18'!
fibonacci

	^self error: Entero negativeFibonacciErrorDescription

		! !


!IntegerNegative methodsFor: 'testing' stamp: 'mg 4/16/2024 00:07:20'!
isNegative

	^true! !

!IntegerNegative methodsFor: 'testing' stamp: 'mg 4/16/2024 00:07:23'!
isOne

	^false.! !

!IntegerNegative methodsFor: 'testing' stamp: 'mg 4/16/2024 00:07:25'!
isZero

	^false.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IntegerNegative class' category: #Numbers!
IntegerNegative class
	instanceVariableNames: ''!

!IntegerNegative class methodsFor: 'instance creation' stamp: 'mg 4/16/2024 00:12:11'!
canRepresent: anInteger
	^anInteger  < 0.! !


!classDefinition: #IntegerOne category: #Numbers!
Entero subclass: #IntegerOne
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numbers'!

!IntegerOne methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:07:28'!
fibonacci

	^Entero with: 1.

		! !


!IntegerOne methodsFor: 'testing' stamp: 'mg 4/16/2024 00:07:31'!
isNegative

	^false.! !

!IntegerOne methodsFor: 'testing' stamp: 'mg 4/16/2024 00:07:35'!
isOne

	^true.! !

!IntegerOne methodsFor: 'testing' stamp: 'mg 4/16/2024 00:07:37'!
isZero

	^false.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IntegerOne class' category: #Numbers!
IntegerOne class
	instanceVariableNames: ''!

!IntegerOne class methodsFor: 'instance creation' stamp: 'mg 4/16/2024 00:12:19'!
canRepresent: anInteger
	^anInteger = 1.! !


!classDefinition: #IntegerZero category: #Numbers!
Entero subclass: #IntegerZero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numbers'!

!IntegerZero methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:06:13'!
fibonacci

	^Entero with: 1.

		! !


!IntegerZero methodsFor: 'testing' stamp: 'mg 4/16/2024 00:06:15'!
isNegative

	^false.! !

!IntegerZero methodsFor: 'testing' stamp: 'mg 4/16/2024 00:06:18'!
isOne

	^false.! !

!IntegerZero methodsFor: 'testing' stamp: 'mg 4/16/2024 00:06:20'!
isZero

	^true.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IntegerZero class' category: #Numbers!
IntegerZero class
	instanceVariableNames: ''!

!IntegerZero class methodsFor: 'instance creation' stamp: 'mg 4/16/2024 00:11:53'!
canRepresent: anInteger
	^anInteger  = 0.! !


!classDefinition: #Fraccion category: #Numbers!
Numero subclass: #Fraccion
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numbers'!

!Fraccion methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:07:45'!
* aMultiplicand

	^aMultiplicand multiplyAFraction: self.
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:07:48'!
+ anAddend 

	^anAddend addAFraction: self! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'mc 4/17/2024 14:29:15'!
- aSubtrahend

	"^aSubtrahend subtractFromAFraction: self"
	^super - aSubtrahend.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'mc 4/17/2024 14:27:17'!
/ aDivisor
	
	"^aDivisor divideAnInteger: self"
	^self * aDivisor inverse.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'mg 4/16/2024 00:08:05'!
inverse

	^denominator / numerator! !


!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:42'!
= anObject

	^(anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:50'!
hash

	^(numerator hash / denominator hash) hash! !


!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
denominator

	^ denominator! !

!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
numerator

	^ numerator! !


!Fraccion methodsFor: 'initialization' stamp: 'HernanWilkinson 5/7/2016 22:54'!
initializeWith: aNumerator over: aDenominator

	"Estas precondiciones estan por si se comenten errores en la implementacion - Hernan"
	aNumerator isZero ifTrue: [ self error: 'una fraccion no puede ser cero' ].
	aDenominator isOne ifTrue: [ self error: 'una fraccion no puede tener denominador 1 porque sino es un entero' ].
	
	numerator := aNumerator.
	denominator := aDenominator ! !


!Fraccion methodsFor: 'testing' stamp: 'NR 9/23/2018 23:41:38'!
isNegative
	
	^numerator < 0! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isOne
	
	^false! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isZero
	
	^false! !


!Fraccion methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:54:46'!
printOn: aStream

	aStream 
		print: numerator;
		nextPut: $/;
		print: denominator ! !


!Fraccion methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:03:29'!
addAFraction: aAugend

	^(numerator * aAugend denominator) + (denominator * aAugend numerator) / (denominator * aAugend denominator)
	
! !

!Fraccion methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:03:38'!
addAnInteger: aAugend  

	^ self + aAugend 
	
	! !

!Fraccion methodsFor: 'arithmetic methods' stamp: 'mg 4/17/2024 10:19:30'!
divideAFraction: aDividend

	^(aDividend numerator * denominator) /  (aDividend denominator * numerator).! !

!Fraccion methodsFor: 'arithmetic methods' stamp: 'mg 4/17/2024 10:19:51'!
divideAnInteger: aDividend

	^(denominator * aDividend) / numerator.! !

!Fraccion methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:02:12'!
multiplyAFraction: aMultiplier

	^(numerator * aMultiplier numerator) / (denominator * aMultiplier denominator) ! !

!Fraccion methodsFor: 'arithmetic methods' stamp: 'mg 4/16/2024 00:03:43'!
multiplyAnInteger: aMultiplier

	^self * aMultiplier.! !

!Fraccion methodsFor: 'arithmetic methods' stamp: 'mc 4/17/2024 14:12:44'!
subtractFromAFraction: aMinuend

	^((aMinuend numerator * denominator) - (aMinuend denominator * numerator)) / (aMinuend denominator * denominator)	! !

!Fraccion methodsFor: 'arithmetic methods' stamp: 'mc 4/17/2024 14:13:20'!
subtractFromAnInteger: aMinuend

	^((denominator * aMinuend) - numerator) / denominator	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fraccion class' category: #Numbers!
Fraccion class
	instanceVariableNames: ''!

!Fraccion class methodsFor: 'intance creation' stamp: 'mg 4/15/2024 23:42:16'!
with: aDividend over: aDivisor

	| greatestCommonDivisor numerator denominator |
	
	aDivisor isZero ifTrue: [ self error: self canNotDivideByZeroErrorDescription ].
	aDividend isZero ifTrue: [ ^aDividend ].
	
	aDivisor isNegative ifTrue:[ ^aDividend negated / aDivisor negated].
	
	greatestCommonDivisor := aDividend greatestCommonDivisorWith: aDivisor. 
	numerator := aDividend // greatestCommonDivisor.
	denominator := aDivisor // greatestCommonDivisor.
	
	denominator isOne ifTrue: [ ^numerator ].

	^self new initializeWith: numerator over: denominator
	! !
