Create Procedure ПоискФИОКлиент
(
@Фамилия nvarchar(50),
@Имя nvarchar(50),
@Отчество nvarchar(50)
)
As
Begin
Select *
From Клиент
Where Фамилия=@Фамилия and Имя=@Имя and Отчество=@Отчество
end

Exec ПоискФИОКлиент
@Фамилия = "Шарипов",
@Имя = "Рустам",
@Отчество = "Владимирович"