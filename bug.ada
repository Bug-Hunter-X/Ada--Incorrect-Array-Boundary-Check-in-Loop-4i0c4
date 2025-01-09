```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Data : My_Array := (others => 0); -- Initialize array

   function Get_Value (Index : Integer) return Integer is
   begin
      return My_Data(Index);
   exception
      when Constraint_Error =>
         return -1; -- Handle out-of-bounds index
   end Get_Value;

begin
   for I in My_Data'Range loop
      if I > My_Data'Last then  --Error: this condition is always false
         Put_Line("Index out of bounds");
      end if;
      Put_Line(Integer'Image(Get_Value(I)));
   end loop;
end Example;
```