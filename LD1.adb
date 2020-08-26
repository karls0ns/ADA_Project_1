with Text_IO;
use Text_IO;
procedure LD1 is


type Hundred is new Integer range 0..100;

package Hundred_IO is new Integer_IO(Hundred);
use Hundred_IO;

type Measurements is array (Character range <>, Character range <>) of Hundred;


Results : Measurements('a'..'d', 'e'..'i') := (others => (others => 1));

MAX : Hundred;

ZERO:exception;

begin
Results('b', 'f') := 0;
Results('c', 'h') := 60;
Results('d', 'g') := 25;

for i in Results'First..Results'Last loop
   for j in Results'Range(2) loop
       Put(Results(i,j),3);
   end loop;
   New_Line;
end loop;

Max:= Results(Results'First(1), Results'First(2));

for i in Results'First..Results'Last loop
   for j in Results'Range(2) loop

         IF Results(i,j) > Max then
         Max:= Results(i,j);
         end if;

         IF Results(i,j) = 0 then
         raise ZERO;
         end if;

   end loop;
   New_Line;
end loop;





Put(Max,2);

exception
 when Zero =>
 Put("Ievadita 0");

end LD1;