# Makefile

CC = cl.exe

INJECTOR = src/injector.c
EVIL_DLL = dlls/messagebox.c

OUT = injector.exe
DLL = messagebox.dll 
OBJ_DLL = messagebox.obj
OBJ_INJ = injector.obj

all: $(OUT) $(DLL)

$(OUT): $(INJECTOR)
	$(CC) $(INJECTOR)

$(DLL): $(EVIL_DLL)
	$(CC) /LD $(EVIL_DLL) user32.lib

clean:
	del $(OUT)
	del $(OBJ_INJ)
	del $(DLL)
	del $(OBJ_DLL)