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

fun rotate (list, 0) = list
| rotate ((h::t), places) =
	if places > 0
		then rotate(t@[h], places-1)
	else
		let
			fun removeLast(last::[]) = (last, [])
			| removeLast(h::t) =
				let
					val (last, rest) = removeLast(t)
				in
					(last, h::rest)
				end
			val (lastOne, listNoLast) = removeLast(h::t)
		in
			rotate((lastOne::listNoLast), places+1)
		end;
