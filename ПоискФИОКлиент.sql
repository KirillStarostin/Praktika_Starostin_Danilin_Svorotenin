Create Procedure ��������������
(
@������� nvarchar(50),
@��� nvarchar(50),
@�������� nvarchar(50)
)
As
Begin
Select *
From ������
Where �������=@������� and ���=@��� and ��������=@��������
end

Exec ��������������
@������� = "�������",
@��� = "������",
@�������� = "������������"