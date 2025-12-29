describe('Pruebas Dummy', () => {
    it('Debería  de pasar una afirmación simple', () => {
        expect(true).toBe(true);
    });

    it('Debería sumar dos números correctamente', () => {
        const result = 2 + 2;
        expect(result).toBe(4);
    });

    it('Debería verificar una cadena', () => {
        const text = 'Hola Mundo';
        expect(text).toContain('Hola');
    });
});