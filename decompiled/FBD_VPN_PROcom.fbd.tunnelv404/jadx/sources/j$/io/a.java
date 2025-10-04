package j$.io;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes4.dex */
final class a implements Iterator {
    private final BufferedReader a;
    String b = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(BufferedReader bufferedReader) {
        this.a = bufferedReader;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.b != null) {
            return true;
        }
        try {
            String readLine = this.a.readLine();
            this.b = readLine;
            return readLine != null;
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b != null || hasNext()) {
            String str = this.b;
            this.b = null;
            return str;
        }
        throw new NoSuchElementException();
    }
}
