program n02;
var
	f, f2: file;
	buffer: array[1..128] of byte;
	numRead, numWritten: word;
begin
	assign(f, 'file');
	assign(f2, 'copy_file');
	reset(f, 1);
	rewrite(f2);

	while not eof(f) do
	begin
		blockread(f, buffer, SizeOf(buffer), numRead);
		blockwrite(f2, buffer, numRead, numWritten);
	end;

	close(f);
	close(f2);
end.
