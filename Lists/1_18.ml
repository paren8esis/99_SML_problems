(* Copyright 2015 paren8esis*)

(* This program is free software: you can redistribute it and/or modify*)
(*    it under the terms of the GNU General Public License as published by*)
(*    the Free Software Foundation, either version 3 of the License, or*)
(*    (at your option) any later version.*)

(*    This program is distributed in the hope that it will be useful,*)
(*    but WITHOUT ANY WARRANTY; without even the implied warranty of*)
(*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the*)
(*    GNU General Public License for more details.*)

(*    You should have received a copy of the GNU General Public License*)
(*    along with this program.  If not, see <http://www.gnu.org/licenses/>.*)

fun slice([], _, _) = []
| slice((h::t), 1, ending) =
	if ending > 1
		then
		let
			val newEnd = ending - 1
		in
			h::slice(t, 1, newEnd)
		end
	else
		[h]
| slice((h::t), start, ending) =
	let	
		val newStart = start - 1
		val newEnd = ending - 1
	in
		slice(t, newStart, newEnd)	
	end;
