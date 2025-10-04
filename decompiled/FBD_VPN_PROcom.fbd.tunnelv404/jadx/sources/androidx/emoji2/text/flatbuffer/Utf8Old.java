package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.Utf8Old;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public class Utf8Old extends Utf8 {
    private static final ThreadLocal<Cache> CACHE;

    /* loaded from: classes.dex */
    public static class Cache {
        final CharsetDecoder decoder;
        final CharsetEncoder encoder;
        CharSequence lastInput = null;
        ByteBuffer lastOutput = null;

        public Cache() {
            Charset charset = StandardCharsets.UTF_8;
            this.encoder = charset.newEncoder();
            this.decoder = charset.newDecoder();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, 땰됐뒘듸땄뒤땄듰땔뒾땤듌든듼땱딀땋땀땻돝딹땅들뒋땳둣돛뎹듬듨둣돷뒝돝듽뒉디뒼딤두땭땍뒼둔땡딄뒾땍딹땹땪둡뒉딞뒷딸땸딹땁딠딄듬뎸땩됴득땪돝됩땄딐듼딸땬딜듌땟땠딟뒹뒛땯득듽땵둡득돼뒐돷두땬뒋땹땋될딟뒤듟딀땵듻뒐뎹딝딄뒈듰땤뒵땯딌땄딞땮됐되딻딠뎰땡딤뒙들딻됴둘딃딸딞] */
    static {
        final ?? obj = new Object();
        CACHE = new ThreadLocal() { // from class: 땰됐땻듰뒋뒻땻든됩뒷땩뒾땁뒈뎻뒝됐뒨돷딅뒻땜땪땋딜딸둘듬땯땔듟든땭돝딨돠둘듨됨땐딠땳뎸돨뒀뎸뎻된딞돨딀땔돝됐듟땧뒉딤돤땥딀돰됴둬돛듟뎻듰땋딃뒹둘땝둥돴뒀뒹딹땟땁뒷땠뒐땔둣딨뎬됐돶땟딃땣땭뎡따듟땧돷듬돛둑땲딄딹되딻들딝둔뎽뒀땤땨딻돰뒝뒐딸듌뒙돰둥땱딽되듟둔땔땟돵
            @Override // java.lang.ThreadLocal
            public final Object initialValue() {
                Utf8Old.Cache lambda$static$0;
                C1276x2d6aee81.this.getClass();
                lambda$static$0 = Utf8Old.lambda$static$0();
                return lambda$static$0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Cache lambda$static$0() {
        return new Cache();
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i, int i2) {
        CharsetDecoder charsetDecoder = CACHE.get().decoder;
        charsetDecoder.reset();
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position(i);
        duplicate.limit(i + i2);
        try {
            return charsetDecoder.decode(duplicate).toString();
        } catch (CharacterCodingException e) {
            throw new IllegalArgumentException("Bad encoding", e);
        }
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        Cache cache = CACHE.get();
        if (cache.lastInput != charSequence) {
            encodedLength(charSequence);
        }
        byteBuffer.put(cache.lastOutput);
    }

    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        CharBuffer wrap;
        Cache cache = CACHE.get();
        int maxBytesPerChar = (int) (cache.encoder.maxBytesPerChar() * charSequence.length());
        ByteBuffer byteBuffer = cache.lastOutput;
        if (byteBuffer == null || byteBuffer.capacity() < maxBytesPerChar) {
            cache.lastOutput = ByteBuffer.allocate(Math.max(128, maxBytesPerChar));
        }
        cache.lastOutput.clear();
        cache.lastInput = charSequence;
        if (charSequence instanceof CharBuffer) {
            wrap = (CharBuffer) charSequence;
        } else {
            wrap = CharBuffer.wrap(charSequence);
        }
        CoderResult encode = cache.encoder.encode(wrap, cache.lastOutput, true);
        if (encode.isError()) {
            try {
                encode.throwException();
            } catch (CharacterCodingException e) {
                throw new IllegalArgumentException("bad character encoding", e);
            }
        }
        cache.lastOutput.flip();
        return cache.lastOutput.remaining();
    }
}
