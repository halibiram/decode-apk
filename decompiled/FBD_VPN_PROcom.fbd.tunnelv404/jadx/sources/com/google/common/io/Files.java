package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.graph.SuccessorsFunction;
import com.google.common.graph.Traverser;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.InlineMe;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import j$.util.DesugarCollections;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class Files {
    private static final SuccessorsFunction<File> FILE_TREE = new SuccessorsFunction<File>() { // from class: com.google.common.io.Files.2
        @Override // com.google.common.graph.SuccessorsFunction
        public Iterable<File> successors(File file) {
            File[] listFiles;
            if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
                return DesugarCollections.unmodifiableList(Arrays.asList(listFiles));
            }
            return ImmutableList.of();
        }
    };
    private static final int TEMP_DIR_ATTEMPTS = 10000;

    /* loaded from: classes2.dex */
    public static final class FileByteSink extends ByteSink {
        private final File file;
        private final ImmutableSet<FileWriteMode> modes;

        public String toString() {
            String valueOf = String.valueOf(this.file);
            String valueOf2 = String.valueOf(this.modes);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 20);
            sb.append(new ObfuscatedString(new long[]{-6042463780693838825L, -5336952381155843236L, 4155063398756706139L, 2859674629839942190L}).toString());
            sb.append(valueOf);
            sb.append(new ObfuscatedString(new long[]{-5233350700294638353L, 5516393374331067832L}).toString());
            sb.append(valueOf2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6610299408016665874L, 5997091500207271885L}), sb);
        }

        private FileByteSink(File file, FileWriteMode... fileWriteModeArr) {
            this.file = (File) Preconditions.checkNotNull(file);
            this.modes = ImmutableSet.copyOf(fileWriteModeArr);
        }

        @Override // com.google.common.io.ByteSink
        public FileOutputStream openStream() {
            return new FileOutputStream(this.file, this.modes.contains(FileWriteMode.APPEND));
        }
    }

    /* loaded from: classes2.dex */
    public static final class FileByteSource extends ByteSource {
        private final File file;

        @Override // com.google.common.io.ByteSource
        public byte[] read() {
            try {
                FileInputStream fileInputStream = (FileInputStream) Closer.create().register(openStream());
                return ByteStreams.toByteArray(fileInputStream, fileInputStream.getChannel().size());
            } finally {
            }
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            if (this.file.isFile()) {
                return this.file.length();
            }
            throw new FileNotFoundException(this.file.toString());
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            if (this.file.isFile()) {
                return Optional.of(Long.valueOf(this.file.length()));
            }
            return Optional.absent();
        }

        public String toString() {
            String valueOf = String.valueOf(this.file);
            StringBuilder sb = new StringBuilder(valueOf.length() + 20);
            sb.append(new ObfuscatedString(new long[]{-277959560938386509L, -6697742059044123224L, -7289284557180384393L, -934840943015666242L}).toString());
            sb.append(valueOf);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4962159118016346678L, 4146736502052653779L}), sb);
        }

        private FileByteSource(File file) {
            this.file = (File) Preconditions.checkNotNull(file);
        }

        @Override // com.google.common.io.ByteSource
        public FileInputStream openStream() {
            return new FileInputStream(this.file);
        }
    }

    /* loaded from: classes2.dex */
    public enum FilePredicate implements Predicate<File> {
        IS_DIRECTORY { // from class: com.google.common.io.Files.FilePredicate.1
            @Override // java.lang.Enum
            public String toString() {
                return new ObfuscatedString(new long[]{9220595871786616080L, -5580184549771115221L, -4732338305289147899L, -1953788696822886699L}).toString();
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isDirectory();
            }
        },
        IS_FILE { // from class: com.google.common.io.Files.FilePredicate.2
            @Override // java.lang.Enum
            public String toString() {
                return new ObfuscatedString(new long[]{6751106282639524807L, 3384196049455064045L, 7074591433010146499L}).toString();
            }

            @Override // com.google.common.base.Predicate
            public boolean apply(File file) {
                return file.isFile();
            }
        }
    }

    private Files() {
    }

    @InlineMe(imports = {"com.google.common.io.FileWriteMode", "com.google.common.io.Files"}, replacement = "Files.asCharSink(to, charset, FileWriteMode.APPEND).write(from)")
    @Deprecated
    public static void append(CharSequence charSequence, File file, Charset charset) {
        asCharSink(file, charset, FileWriteMode.APPEND).write(charSequence);
    }

    public static ByteSink asByteSink(File file, FileWriteMode... fileWriteModeArr) {
        return new FileByteSink(file, fileWriteModeArr);
    }

    public static ByteSource asByteSource(File file) {
        return new FileByteSource(file);
    }

    public static CharSink asCharSink(File file, Charset charset, FileWriteMode... fileWriteModeArr) {
        return asByteSink(file, fileWriteModeArr).asCharSink(charset);
    }

    public static CharSource asCharSource(File file, Charset charset) {
        return asByteSource(file).asCharSource(charset);
    }

    public static void copy(File file, OutputStream outputStream) {
        asByteSource(file).copyTo(outputStream);
    }

    public static void createParentDirs(File file) {
        Preconditions.checkNotNull(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        String valueOf = String.valueOf(file);
        throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-7625885389555380724L, 1553213850821615078L, 4679877082370225719L, -5502213573604535552L, 2989963900149521750L, 2504264216289777375L}), new StringBuilder(valueOf.length() + 39), valueOf));
    }

    @Beta
    @Deprecated
    public static File createTempDir() {
        File file = new File(System.getProperty(new ObfuscatedString(new long[]{-3010419374617020260L, 1141014452623529311L, -1507734521349117759L}).toString()));
        long currentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder(21);
        sb.append(currentTimeMillis);
        String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-611823881854175997L, -2869041995834379432L}), sb);
        for (int i = 0; i < TEMP_DIR_ATTEMPTS; i++) {
            StringBuilder sb2 = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(11, m3332x9d12c1f4));
            sb2.append(m3332x9d12c1f4);
            sb2.append(i);
            File file2 = new File(file, sb2.toString());
            if (file2.mkdir()) {
                return file2;
            }
        }
        StringBuilder sb3 = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(AbstractC1320xaf50c7e8.m4356x1378447b(66, m3332x9d12c1f4), m3332x9d12c1f4));
        sb3.append(new ObfuscatedString(new long[]{810670450819060908L, -8128270647707193219L, -1725287903477618879L, 2903318616894687755L, 2328111870099149747L, -5845841439676650089L, 6682926885124286727L, 8681382989962929482L}).toString());
        sb3.append(m3332x9d12c1f4);
        sb3.append(new ObfuscatedString(new long[]{2696004944311730610L, 6642646638886128557L}).toString());
        sb3.append(m3332x9d12c1f4);
        sb3.append("9999)");
        throw new IllegalStateException(sb3.toString());
    }

    public static boolean equal(File file, File file2) {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        if (file != file2 && !file.equals(file2)) {
            long length = file.length();
            long length2 = file2.length();
            if (length != 0 && length2 != 0 && length != length2) {
                return false;
            }
            return asByteSource(file).contentEquals(asByteSource(file2));
        }
        return true;
    }

    @Beta
    public static Traverser<File> fileTraverser() {
        return Traverser.forTree(FILE_TREE);
    }

    public static String getFileExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf == -1) {
            return new ObfuscatedString(new long[]{7064127341795562822L}).toString();
        }
        return name.substring(lastIndexOf + 1);
    }

    public static String getNameWithoutExtension(String str) {
        Preconditions.checkNotNull(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf != -1) {
            return name.substring(0, lastIndexOf);
        }
        return name;
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asByteSource(file).hash(hashFunction)")
    @Deprecated
    public static HashCode hash(File file, HashFunction hashFunction) {
        return asByteSource(file).hash(hashFunction);
    }

    public static Predicate<File> isDirectory() {
        return FilePredicate.IS_DIRECTORY;
    }

    public static Predicate<File> isFile() {
        return FilePredicate.IS_FILE;
    }

    public static MappedByteBuffer map(File file) {
        Preconditions.checkNotNull(file);
        return map(file, FileChannel.MapMode.READ_ONLY);
    }

    private static MappedByteBuffer mapInternal(File file, FileChannel.MapMode mapMode, long j) {
        ObfuscatedString obfuscatedString;
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(mapMode);
        Closer create = Closer.create();
        try {
            if (mapMode == FileChannel.MapMode.READ_ONLY) {
                obfuscatedString = new ObfuscatedString(new long[]{3990773428443643047L, -2476480352524830718L});
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-5888377204331290281L, -9181308559558226250L});
            }
            FileChannel fileChannel = (FileChannel) create.register(((RandomAccessFile) create.register(new RandomAccessFile(file, obfuscatedString.toString()))).getChannel());
            if (j == -1) {
                j = fileChannel.size();
            }
            return fileChannel.map(mapMode, 0L, j);
        } finally {
        }
    }

    public static void move(File file, File file2) {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(file2);
        Preconditions.checkArgument(!file.equals(file2), new ObfuscatedString(new long[]{2187603024304801179L, 2206641140621436738L, 9059909279621753137L, 1828950689651414060L, 6012485214086177316L, 7416910587983560953L, -656231100569810942L}).toString(), file, file2);
        if (!file.renameTo(file2)) {
            copy(file, file2);
            if (!file.delete()) {
                if (!file2.delete()) {
                    String valueOf = String.valueOf(file2);
                    throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{3591208845743097862L, 5116469328960957576L, 8297117432465959599L, -2974323271975012296L}), new StringBuilder(valueOf.length() + 17), valueOf));
                }
                String valueOf2 = String.valueOf(file);
                throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{255975365200966801L, 5220945610127021033L, -3876026163932388227L, -5177554455973994062L}), new StringBuilder(valueOf2.length() + 17), valueOf2));
            }
        }
    }

    public static BufferedReader newReader(File file, Charset charset) {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedReader(new InputStreamReader(new FileInputStream(file), charset));
    }

    public static BufferedWriter newWriter(File file, Charset charset) {
        Preconditions.checkNotNull(file);
        Preconditions.checkNotNull(charset);
        return new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), charset));
    }

    @Deprecated
    @CanIgnoreReturnValue
    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asByteSource(file).read(processor)")
    @ParametricNullness
    public static <T> T readBytes(File file, ByteProcessor<T> byteProcessor) {
        return (T) asByteSource(file).read(byteProcessor);
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).readFirstLine()")
    @CheckForNull
    @Deprecated
    public static String readFirstLine(File file, Charset charset) {
        return asCharSource(file, charset).readFirstLine();
    }

    public static List<String> readLines(File file, Charset charset) {
        return (List) asCharSource(file, charset).readLines(new LineProcessor<List<String>>() { // from class: com.google.common.io.Files.1
            final List<String> result = Lists.newArrayList();

            @Override // com.google.common.io.LineProcessor
            public boolean processLine(String str) {
                this.result.add(str);
                return true;
            }

            @Override // com.google.common.io.LineProcessor
            public List<String> getResult() {
                return this.result;
            }
        });
    }

    public static String simplifyPath(String str) {
        char c;
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            return new ObfuscatedString(new long[]{-8052378340069549984L, 367561875502253399L}).toString();
        }
        Iterable<String> split = Splitter.on('/').omitEmptyStrings().split(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : split) {
            int hashCode = str2.hashCode();
            if (hashCode != 46) {
                if (hashCode == 1472 && str2.equals(new ObfuscatedString(new long[]{-8793590612067512631L, -6839979611884529782L}).toString())) {
                    c = 1;
                }
                c = 65535;
            } else {
                if (str2.equals(new ObfuscatedString(new long[]{-3930360241945326836L, 3446578432757874023L}).toString())) {
                    c = 0;
                }
                c = 65535;
            }
            if (c != 0) {
                if (c != 1) {
                    arrayList.add(str2);
                } else if (arrayList.size() > 0 && !((String) arrayList.get(arrayList.size() - 1)).equals(new ObfuscatedString(new long[]{2433095327388132406L, -4070051426620167979L}).toString())) {
                    arrayList.remove(arrayList.size() - 1);
                } else {
                    arrayList.add(new ObfuscatedString(new long[]{8709350129226978315L, 8970174930109949573L}).toString());
                }
            }
        }
        String join = Joiner.on('/').join(arrayList);
        if (str.charAt(0) == '/') {
            String obfuscatedString = new ObfuscatedString(new long[]{7826819367273570415L, -2337318938374994085L}).toString();
            String valueOf = String.valueOf(join);
            if (valueOf.length() != 0) {
                join = obfuscatedString.concat(valueOf);
            } else {
                join = new String(obfuscatedString);
            }
        }
        while (join.startsWith(new ObfuscatedString(new long[]{5628672023425395659L, 4528073470902578990L}).toString())) {
            join = join.substring(3);
        }
        if (join.equals(new ObfuscatedString(new long[]{8393681438160131192L, -5723068438926296814L}).toString())) {
            return new ObfuscatedString(new long[]{2059310398503141647L, -8687123307128960333L}).toString();
        }
        if (new ObfuscatedString(new long[]{-8709331011010906813L}).toString().equals(join)) {
            return new ObfuscatedString(new long[]{-5170398538116340986L, -918718559592017656L}).toString();
        }
        return join;
    }

    public static byte[] toByteArray(File file) {
        return asByteSource(file).read();
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).read()")
    @Deprecated
    public static String toString(File file, Charset charset) {
        return asCharSource(file, charset).read();
    }

    public static void touch(File file) {
        Preconditions.checkNotNull(file);
        if (!file.createNewFile() && !file.setLastModified(System.currentTimeMillis())) {
            String valueOf = String.valueOf(file);
            throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5792203137516718015L, 5434019148259362394L, -8193611162469778099L, -4025142153013283781L, -7408874835103187260L, 567998516279170625L}), new StringBuilder(valueOf.length() + 38), valueOf));
        }
    }

    public static void write(byte[] bArr, File file) {
        asByteSink(file, new FileWriteMode[0]).write(bArr);
    }

    public static void copy(File file, File file2) {
        Preconditions.checkArgument(!file.equals(file2), new ObfuscatedString(new long[]{-752602015036057536L, -7891808069774160738L, -2032498368707663433L, 8359698450238007098L, -3083345718608304808L, 132347122049147528L, 5294951931148607201L}).toString(), file, file2);
        asByteSource(file).copyTo(asByteSink(file2, new FileWriteMode[0]));
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSink(to, charset).write(from)")
    @Deprecated
    public static void write(CharSequence charSequence, File file, Charset charset) {
        asCharSink(file, charset, new FileWriteMode[0]).write(charSequence);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode) {
        return mapInternal(file, mapMode, -1L);
    }

    @Deprecated
    @CanIgnoreReturnValue
    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(file, charset).readLines(callback)")
    @ParametricNullness
    public static <T> T readLines(File file, Charset charset, LineProcessor<T> lineProcessor) {
        return (T) asCharSource(file, charset).readLines(lineProcessor);
    }

    @InlineMe(imports = {"com.google.common.io.Files"}, replacement = "Files.asCharSource(from, charset).copyTo(to)")
    @Deprecated
    public static void copy(File file, Charset charset, Appendable appendable) {
        asCharSource(file, charset).copyTo(appendable);
    }

    public static MappedByteBuffer map(File file, FileChannel.MapMode mapMode, long j) {
        Preconditions.checkArgument(j >= 0, new ObfuscatedString(new long[]{-8892554160947115322L, -6791652805533531559L, -7457236082832799905L, -1892545882922084663L, 7233627106685670052L}).toString(), j);
        return mapInternal(file, mapMode, j);
    }
}
