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
      --Corrected condition: Check for index within bounds, not greater than the last index
      if I < My_Data'First or I > My_Data'Last then
         Put_Line("Index out of bounds");
      else
         Put_Line(Integer'Image(Get_Value(I)));
      end if;
   end loop;
end Example;
```