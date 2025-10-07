package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.packets.TypesWriter;
import defpackage.AbstractC0749x8313616e;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Vector;

/* loaded from: classes3.dex */
public class SFTPv3Client {
    String charsetName;
    final Connection conn;
    final PrintStream debug;
    boolean flag_closed;
    InputStream is;
    int next_request_id;
    OutputStream os;
    int protocol_version;
    HashMap server_extensions;
    final Session sess;

    public SFTPv3Client(Connection connection, PrintStream printStream) {
        this.flag_closed = false;
        this.protocol_version = 0;
        this.server_extensions = new HashMap();
        this.next_request_id = 1000;
        this.charsetName = null;
        if (connection != null) {
            this.conn = connection;
            this.debug = printStream;
            if (printStream != null) {
                printStream.println(new ObfuscatedString(new long[]{-84688259002104075L, -6775530622124636848L, 682160389210948116L, -3568784311643026940L, 2653950980935322613L, -3901510856536334167L, 9047244819514782368L}).toString());
            }
            Session openSession = connection.openSession();
            this.sess = openSession;
            openSession.startSubSystem(new ObfuscatedString(new long[]{2864946838767198499L, 8712628402771094206L}).toString());
            this.is = openSession.getStdout();
            this.os = new BufferedOutputStream(openSession.getStdin(), 2048);
            if (this.is != null) {
                init();
                return;
            }
            throw new IOException(new ObfuscatedString(new long[]{-8899537906047388794L, -8762640115209565115L, 3829789440447781347L, 6710838474453347326L, -8150504923308644756L, -3909915363994137762L, 8834705973092206364L, 4246773579544078170L, -7882362908203885548L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{1052780798380914148L, -8783672049339758076L, -6266771046797610839L, -6809598245202105680L, 2573782148263993965L}).toString());
    }

    private final void checkHandleValidAndOpen(SFTPv3FileHandle sFTPv3FileHandle) {
        if (sFTPv3FileHandle.client == this) {
            if (!sFTPv3FileHandle.isClosed) {
                return;
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-1745568436709917277L, 6335941251836164800L, 7473386490729009377L, -8695637641840442069L, -5264069945354219802L}).toString());
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{5288302858789367291L, 8064954968937009338L, -1832705082480471652L, -5815851944983395229L, -3344144592141474506L, 5264910066175016902L, -7277861293444748503L, 3850317496879548499L, 5545283992885406212L, 3402592586820237380L}).toString());
    }

    private final void closeHandle(byte[] bArr) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(bArr, 0, bArr.length);
        sendMessage(4, generateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(generateNextRequestID);
    }

    private byte[] createAttrs(SFTPv3FileAttributes sFTPv3FileAttributes) {
        TypesWriter typesWriter = new TypesWriter();
        int i = 0;
        if (sFTPv3FileAttributes == null) {
            typesWriter.writeUINT32(0);
        } else {
            if (sFTPv3FileAttributes.size != null) {
                i = 1;
            }
            if (sFTPv3FileAttributes.uid != null && sFTPv3FileAttributes.gid != null) {
                i |= 2;
            }
            if (sFTPv3FileAttributes.permissions != null) {
                i |= 4;
            }
            if (sFTPv3FileAttributes.atime != null && sFTPv3FileAttributes.mtime != null) {
                i |= 8;
            }
            typesWriter.writeUINT32(i);
            Long l = sFTPv3FileAttributes.size;
            if (l != null) {
                typesWriter.writeUINT64(l.longValue());
            }
            Integer num = sFTPv3FileAttributes.uid;
            if (num != null && sFTPv3FileAttributes.gid != null) {
                typesWriter.writeUINT32(num.intValue());
                typesWriter.writeUINT32(sFTPv3FileAttributes.gid.intValue());
            }
            Integer num2 = sFTPv3FileAttributes.permissions;
            if (num2 != null) {
                typesWriter.writeUINT32(num2.intValue());
            }
            Long l2 = sFTPv3FileAttributes.atime;
            if (l2 != null && sFTPv3FileAttributes.mtime != null) {
                typesWriter.writeUINT32(l2.intValue());
                typesWriter.writeUINT32(sFTPv3FileAttributes.mtime.intValue());
            }
        }
        return typesWriter.getBytes();
    }

    private final String expandString(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = bArr[i + i3] & 255;
            if (i4 >= 32 && i4 <= 126) {
                stringBuffer.append((char) i4);
            } else {
                stringBuffer.append(new ObfuscatedString(new long[]{-6388892148367164061L, -8209936845105982234L}).toString() + Integer.toHexString(i4) + new ObfuscatedString(new long[]{8232789313878885588L, 9113560596728047481L}).toString());
            }
        }
        return stringBuffer.toString();
    }

    private void expectStatusOKMessage(int i) {
        byte[] receiveMessage = receiveMessage(34000);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{-8600877942112569738L, 6448185742588471468L, 1120305450812849142L}).toString());
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(receiveMessage);
        int readByte = typesReader.readByte();
        if (typesReader.readUINT32() == i) {
            if (readByte == 101) {
                int readUINT32 = typesReader.readUINT32();
                if (readUINT32 == 0) {
                    return;
                } else {
                    throw new SFTPException(typesReader.readString(), readUINT32);
                }
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-2210192255153455687L, 6156958562154734504L, -5308877599122358203L, 6628330297732981028L, 8245630212814736676L, 7104705271080356409L, 9164790154972287011L}).toString());
                sb.append(readByte);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1050200480057656425L, 7866311298827278219L}), sb));
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{-7773054825611004798L, -4055556180975699252L, 1249508335288357512L, 5168277005348232753L, -1513392774770034258L, -4557199686747446806L}).toString());
    }

    private final int generateNextRequestID() {
        int i;
        synchronized (this) {
            i = this.next_request_id;
            this.next_request_id = i + 1;
        }
        return i;
    }

    private void init() {
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{-8687148922591158229L, 7980961882775201411L, 4862795066001753741L, -8769229718808532612L, 3083133323671434394L}).toString());
        }
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeUINT32(3);
        sendMessage(1, 0, typesWriter.getBytes());
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println(new ObfuscatedString(new long[]{7250526545150157530L, 3558597333802016247L, -7107393651610773578L, -8820517825299608086L, -1430250775848013626L}).toString());
        }
        TypesReader typesReader = new TypesReader(receiveMessage(34000));
        int readByte = typesReader.readByte();
        if (readByte == 2) {
            this.protocol_version = typesReader.readUINT32();
            PrintStream printStream3 = this.debug;
            if (printStream3 != null) {
                printStream3.println(new ObfuscatedString(new long[]{-5764033597972541985L, -8706714965490273914L, 7492061304091258579L, -5973302859690508958L, -1585036137718107404L, 5343314263319068050L}).toString() + this.protocol_version);
            }
            if (this.protocol_version == 3) {
                while (typesReader.remain() != 0) {
                    String readString = typesReader.readString();
                    byte[] readByteString = typesReader.readByteString();
                    this.server_extensions.put(readString, readByteString);
                    PrintStream printStream4 = this.debug;
                    if (printStream4 != null) {
                        printStream4.println(new ObfuscatedString(new long[]{-7695550546759232602L, 125420214871033355L, 1183760403295176983L, 2452485305971640249L, -4780295514332878073L}).toString() + readString + new ObfuscatedString(new long[]{7662778703548746332L, 7410837293169534987L}).toString() + expandString(readByteString, 0, readByteString.length) + new ObfuscatedString(new long[]{-8358998925594881211L, 5294186616545718423L}).toString());
                    }
                }
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{2403263224597919866L, 6377131640439778023L, 8804597342956735436L}).toString());
            sb.append(this.protocol_version);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5679626289226752127L, -6061938138368330721L, 5025663727449074047L, 6565736799729413896L, 3622319156210007823L}), sb));
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(new ObfuscatedString(new long[]{7171112375423736900L, 4144769706218668740L, -4562038306532800487L, 6647486569066130972L, 8790945752077906252L, -6277440007335817936L, -2741008315926907748L, -4312542489181447071L}).toString());
        sb2.append(readByte);
        throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1611320739780468053L, -8200069978211516744L}), sb2));
    }

    private final byte[] openDirectory(String str) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{5787534659716876150L, 8807375914842683368L, 360792721232255672L, -917115197545087054L, -9062091918478386769L}).toString());
            this.debug.flush();
        }
        sendMessage(11, generateNextRequestID, typesWriter.getBytes());
        TypesReader typesReader = new TypesReader(receiveMessage(34000));
        int readByte = typesReader.readByte();
        if (typesReader.readUINT32() == generateNextRequestID) {
            if (readByte == 102) {
                PrintStream printStream2 = this.debug;
                if (printStream2 != null) {
                    printStream2.println(new ObfuscatedString(new long[]{-409748717768253112L, 2607326523917743455L, 6598634902987856634L, -7892188770339490655L}).toString());
                    this.debug.flush();
                }
                return typesReader.readByteString();
            }
            if (readByte != 101) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-3835823351575451996L, 6805398556381198732L, -7783198286850493247L, 4349457892688162644L, -6157512460014754010L, 481837453928475457L, -6181988090363321504L}).toString());
                sb.append(readByte);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2090083045233753297L, -6467387564515712388L}), sb));
            }
            throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
        }
        throw new IOException(new ObfuscatedString(new long[]{-8785855567522015454L, -3485138441811629319L, -8914360474090437489L, 3080678426810372849L, -286822282870718209L, -7502560464257597817L}).toString());
    }

    private SFTPv3FileHandle openFile(String str, int i, SFTPv3FileAttributes sFTPv3FileAttributes) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        typesWriter.writeUINT32(i);
        typesWriter.writeBytes(createAttrs(sFTPv3FileAttributes));
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{2248245493986942348L, -2489859423775071500L, 7221656407556623924L, -8525684063353160598L}).toString());
            this.debug.flush();
        }
        sendMessage(3, generateNextRequestID, typesWriter.getBytes());
        TypesReader typesReader = new TypesReader(receiveMessage(34000));
        int readByte = typesReader.readByte();
        if (typesReader.readUINT32() == generateNextRequestID) {
            if (readByte == 102) {
                PrintStream printStream2 = this.debug;
                if (printStream2 != null) {
                    printStream2.println(new ObfuscatedString(new long[]{-735164644074076267L, 1442470638933229243L, 6565519043325304049L, 1323920262447058410L}).toString());
                    this.debug.flush();
                }
                return new SFTPv3FileHandle(this, typesReader.readByteString());
            }
            if (readByte != 101) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-565563154532251663L, 6203186410176898982L, 2587462209085801146L, -8100949069385646669L, 998699904445604808L, -7237358823796846389L, 2994649933960756422L}).toString());
                sb.append(readByte);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3075079744728368102L, 8962712717169543553L}), sb));
            }
            throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
        }
        throw new IOException(new ObfuscatedString(new long[]{7088991477453210457L, 1160364403669731687L, 2146479395799817522L, 7050114685423565222L, -7570059338733058983L, -2036852592699896620L}).toString());
    }

    private SFTPv3FileAttributes readAttrs(TypesReader typesReader) {
        SFTPv3FileAttributes sFTPv3FileAttributes = new SFTPv3FileAttributes();
        int readUINT32 = typesReader.readUINT32();
        if ((readUINT32 & 1) != 0) {
            PrintStream printStream = this.debug;
            if (printStream != null) {
                printStream.println(new ObfuscatedString(new long[]{-6939511807376915580L, 5004886249425024386L, 131397926523956280L, 990597188826371988L}).toString());
            }
            sFTPv3FileAttributes.size = new Long(typesReader.readUINT64());
        }
        if ((readUINT32 & 2) != 0) {
            PrintStream printStream2 = this.debug;
            if (printStream2 != null) {
                printStream2.println(new ObfuscatedString(new long[]{-598378355118178503L, 3864036078001045045L, 3871586283036301421L, 3847821029413263081L, 8195575497449446881L}).toString());
            }
            sFTPv3FileAttributes.uid = new Integer(typesReader.readUINT32());
            sFTPv3FileAttributes.gid = new Integer(typesReader.readUINT32());
        }
        if ((4 & readUINT32) != 0) {
            PrintStream printStream3 = this.debug;
            if (printStream3 != null) {
                printStream3.println(new ObfuscatedString(new long[]{-4821307716421688663L, -4466432317517380333L, 7673873950686985050L, 4099951504179594895L, -986760268852475795L}).toString());
            }
            sFTPv3FileAttributes.permissions = new Integer(typesReader.readUINT32());
        }
        if ((readUINT32 & 8) != 0) {
            PrintStream printStream4 = this.debug;
            if (printStream4 != null) {
                printStream4.println(new ObfuscatedString(new long[]{-4723650970956349168L, -6307341580762674136L, -3350448320249706707L, -2919294319072696661L, -227660272585946819L}).toString());
            }
            sFTPv3FileAttributes.atime = new Long(typesReader.readUINT32() & 4294967295L);
            sFTPv3FileAttributes.mtime = new Long(typesReader.readUINT32() & 4294967295L);
        }
        if ((Integer.MIN_VALUE & readUINT32) != 0) {
            int readUINT322 = typesReader.readUINT32();
            PrintStream printStream5 = this.debug;
            if (printStream5 != null) {
                printStream5.println(new ObfuscatedString(new long[]{2743655186935640804L, 1385720246848904424L, -8522987830118336687L, -3565828612536940904L, -295521614452343674L}).toString() + readUINT322 + new ObfuscatedString(new long[]{-5041260984375965041L, 2183007902809735158L}).toString());
            }
            while (readUINT322 > 0) {
                typesReader.readByteString();
                typesReader.readByteString();
                readUINT322--;
            }
        }
        return sFTPv3FileAttributes;
    }

    private final void readBytes(byte[] bArr, int i, int i2) {
        while (i2 > 0) {
            int read = this.is.read(bArr, i, i2);
            if (read >= 0) {
                if (read != 0 && read <= i2) {
                    i2 -= read;
                    i += read;
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{7415411901091818509L, 3502545479449711225L, -4978183524652485215L, 51087611518853112L, -6089524368491499121L, -2951170707837870682L, 3219629183284692520L}).toString());
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{2990086248998960238L, -2776027798587777575L, 8709927279918355396L, -1326646009694415134L, -2335083307688404591L}).toString());
            }
        }
    }

    private final byte[] receiveMessage(int i) {
        byte[] bArr = new byte[4];
        readBytes(bArr, 0, 4);
        int i2 = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i2 <= i && i2 > 0) {
            byte[] bArr2 = new byte[i2];
            readBytes(bArr2, 0, i2);
            return bArr2;
        }
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6547729827303348979L, -8697942070216858152L, 2662747373952940332L, -479347016216624536L, -1807206342906022670L}), new StringBuilder(), i2));
    }

    private final Vector scanDirectory(byte[] bArr) {
        Vector vector = new Vector();
        while (true) {
            int generateNextRequestID = generateNextRequestID();
            TypesWriter typesWriter = new TypesWriter();
            typesWriter.writeString(bArr, 0, bArr.length);
            PrintStream printStream = this.debug;
            if (printStream != null) {
                printStream.println(new ObfuscatedString(new long[]{-3618610880472826394L, 3672974927929561116L, 1392407652049545419L, 364008160167286950L, -3172553836086872396L}).toString());
                this.debug.flush();
            }
            sendMessage(12, generateNextRequestID, typesWriter.getBytes());
            byte[] receiveMessage = receiveMessage(65536);
            PrintStream printStream2 = this.debug;
            if (printStream2 != null) {
                printStream2.println(new ObfuscatedString(new long[]{7770285799674181736L, 2902570681043662826L, -6173825262095639709L}).toString());
                this.debug.flush();
            }
            TypesReader typesReader = new TypesReader(receiveMessage);
            int readByte = typesReader.readByte();
            if (typesReader.readUINT32() == generateNextRequestID) {
                if (readByte == 104) {
                    int readUINT32 = typesReader.readUINT32();
                    PrintStream printStream3 = this.debug;
                    if (printStream3 != null) {
                        printStream3.println(new ObfuscatedString(new long[]{7781319383623523380L, 2013150145007006838L}).toString() + readUINT32 + new ObfuscatedString(new long[]{-3615820250398498025L, -7350703598112164836L, 8663101720280014562L}).toString());
                    }
                    while (readUINT32 > 0) {
                        SFTPv3DirectoryEntry sFTPv3DirectoryEntry = new SFTPv3DirectoryEntry();
                        sFTPv3DirectoryEntry.filename = typesReader.readString(this.charsetName);
                        sFTPv3DirectoryEntry.longEntry = typesReader.readString(this.charsetName);
                        sFTPv3DirectoryEntry.attributes = readAttrs(typesReader);
                        vector.addElement(sFTPv3DirectoryEntry);
                        PrintStream printStream4 = this.debug;
                        if (printStream4 != null) {
                            printStream4.println(new ObfuscatedString(new long[]{2610722051659572405L, -2062902936195859467L}).toString() + sFTPv3DirectoryEntry.filename + new ObfuscatedString(new long[]{7426957756755911397L, 3763515699802010104L}).toString());
                        }
                        readUINT32--;
                    }
                } else {
                    if (readByte == 101) {
                        int readUINT322 = typesReader.readUINT32();
                        if (readUINT322 == 1) {
                            return vector;
                        }
                        throw new SFTPException(typesReader.readString(), readUINT322);
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{2764189547518948098L, 5134025110554131651L, 3125541882222701544L, 1664057032432318170L, 6174979498923960551L, 8374685272230756508L, 5361280573797625255L}).toString());
                    sb.append(readByte);
                    throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5176140711968808425L, -4426394057009898284L}), sb));
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-4587174520141987513L, -3928746658819128133L, 2800313494827858020L, 2801462782244554367L, 1494283767491556470L, 3796005749938961818L}).toString());
            }
        }
    }

    private final void sendMessage(int i, int i2, byte[] bArr, int i3, int i4) {
        int i5 = i4 + 1;
        if (i != 1) {
            i5 = i4 + 5;
        }
        this.os.write(i5 >> 24);
        this.os.write(i5 >> 16);
        this.os.write(i5 >> 8);
        this.os.write(i5);
        this.os.write(i);
        if (i != 1) {
            this.os.write(i2 >> 24);
            this.os.write(i2 >> 16);
            this.os.write(i2 >> 8);
            this.os.write(i2);
        }
        this.os.write(bArr, i3, i4);
        this.os.flush();
    }

    private SFTPv3FileAttributes statBoth(String str, int i) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{-7260001024510394798L, -7026932067404307784L, -3770661653324792719L, 9184712468988207147L, 1468626388679767486L, -946946597353304592L}).toString());
            this.debug.flush();
        }
        sendMessage(i, generateNextRequestID, typesWriter.getBytes());
        byte[] receiveMessage = receiveMessage(34000);
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println(new ObfuscatedString(new long[]{-5991969569928226632L, -6430801978903649007L, -5248932928223753875L}).toString());
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(receiveMessage);
        int readByte = typesReader.readByte();
        if (typesReader.readUINT32() == generateNextRequestID) {
            if (readByte == 105) {
                return readAttrs(typesReader);
            }
            if (readByte != 101) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-5357531665430764364L, -5745823169844293524L, -7319733757099225426L, 5246259941769007419L, 1928429680992427157L, 175860728089052440L, -2840696612932364618L}).toString());
                sb.append(readByte);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8617369515202233902L, 1121703624966818152L}), sb));
            }
            throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
        }
        throw new IOException(new ObfuscatedString(new long[]{-5501323876608613204L, -1436355718122632011L, -8958240971844525516L, 6962622821069826623L, 539697373702727121L, -309887125058957588L}).toString());
    }

    public SFTPv3FileAttributes _stat(String str) {
        try {
            return stat(str);
        } catch (SFTPException e) {
            int serverErrorCode = e.getServerErrorCode();
            if (serverErrorCode != 2 && serverErrorCode != 10) {
                throw e;
            }
            return null;
        }
    }

    public String canonicalPath(String str) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{8908179707208603637L, -3978915157302879532L, 5664711507660288936L, 1977266272954688366L, -8490147177321298912L}).toString());
            this.debug.flush();
        }
        sendMessage(16, generateNextRequestID, typesWriter.getBytes());
        byte[] receiveMessage = receiveMessage(34000);
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println(new ObfuscatedString(new long[]{-995806112309016880L, 3256525913104692647L, -5505383254453065240L}).toString());
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(receiveMessage);
        int readByte = typesReader.readByte();
        if (typesReader.readUINT32() == generateNextRequestID) {
            if (readByte == 104) {
                if (typesReader.readUINT32() == 1) {
                    return typesReader.readString(this.charsetName);
                }
                throw new IOException(new ObfuscatedString(new long[]{-87224646097079503L, -3579076365687140151L, -5966585989769557803L, 6427523957975495984L, 3412740549268935898L, 7570483119984286847L, 6820904388342546383L}).toString());
            }
            if (readByte != 101) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{1198885232753863997L, 2654603832452971033L, -4663223163221187043L, 4250841639600268822L, -1841723480587783451L, -1992521272100680306L, 6213832932703617855L}).toString());
                sb.append(readByte);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4512293781233361340L, -8571996077834210964L}), sb));
            }
            throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
        }
        throw new IOException(new ObfuscatedString(new long[]{5751366778105007447L, 2239807055699658312L, -1907108392332686635L, -4497389056090723746L, -7819161427390068L, -8951762928027601415L}).toString());
    }

    public void chmod(String str, int i) {
        SFTPv3FileAttributes sFTPv3FileAttributes = new SFTPv3FileAttributes();
        sFTPv3FileAttributes.permissions = Integer.valueOf(i);
        setstat(str, sFTPv3FileAttributes);
    }

    public void close() {
        this.sess.close();
    }

    public void closeFile(SFTPv3FileHandle sFTPv3FileHandle) {
        if (sFTPv3FileHandle != null) {
            try {
                if (!sFTPv3FileHandle.isClosed) {
                    closeHandle(sFTPv3FileHandle.fileHandle);
                }
                return;
            } finally {
                sFTPv3FileHandle.isClosed = true;
            }
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6809076294411060561L, 6827854772540110869L, -5614052859295133717L, -5521482043236985460L, 6926567012453148647L, -4353363981754198993L}).toString());
    }

    public SFTPv3FileHandle createFile(String str) {
        return createFile(str, null);
    }

    public SFTPv3FileHandle createFileTruncate(String str) {
        return createFileTruncate(str, null);
    }

    public void createSymlink(String str, String str2) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str2, this.charsetName);
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{-3653556443271916034L, -8341124157740242718L, 1720334681780892683L, -4485702373587994061L, -4824802318377976845L}).toString());
            this.debug.flush();
        }
        sendMessage(20, generateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(generateNextRequestID);
    }

    public boolean exists(String str) {
        if (_stat(str) != null) {
            return true;
        }
        return false;
    }

    public void fsetstat(SFTPv3FileHandle sFTPv3FileHandle, SFTPv3FileAttributes sFTPv3FileAttributes) {
        checkHandleValidAndOpen(sFTPv3FileHandle);
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        byte[] bArr = sFTPv3FileHandle.fileHandle;
        typesWriter.writeString(bArr, 0, bArr.length);
        typesWriter.writeBytes(createAttrs(sFTPv3FileAttributes));
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{4520059090863576651L, -8530772024024098910L, 4338320458675654975L, 2134084326939423749L, -3501003706000299510L}).toString());
            this.debug.flush();
        }
        sendMessage(10, generateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(generateNextRequestID);
    }

    public SFTPv3FileAttributes fstat(SFTPv3FileHandle sFTPv3FileHandle) {
        checkHandleValidAndOpen(sFTPv3FileHandle);
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        byte[] bArr = sFTPv3FileHandle.fileHandle;
        typesWriter.writeString(bArr, 0, bArr.length);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{5424665522291808685L, 724887248944053320L, 4211318147632723022L, -1940937397706290776L}).toString());
            this.debug.flush();
        }
        sendMessage(8, generateNextRequestID, typesWriter.getBytes());
        byte[] receiveMessage = receiveMessage(34000);
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println(new ObfuscatedString(new long[]{-8511849069262847798L, 396129674073143318L, -1469865234553327175L}).toString());
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(receiveMessage);
        int readByte = typesReader.readByte();
        if (typesReader.readUINT32() == generateNextRequestID) {
            if (readByte == 105) {
                return readAttrs(typesReader);
            }
            if (readByte != 101) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{726584126207579761L, 7349936239128141945L, 8916140054242364512L, -582088238344697900L, 9194048964806899633L, 2957836124680468737L, -9079124151691885771L}).toString());
                sb.append(readByte);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4609757744737352618L, 2454651467507426154L}), sb));
            }
            throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
        }
        throw new IOException(new ObfuscatedString(new long[]{-7392370199520445133L, 6320521919790665997L, -1497717857498651732L, -1456325374242810880L, 160836928737433319L, -5897032751569653373L}).toString());
    }

    public String getCharset() {
        return this.charsetName;
    }

    public int getProtocolVersion() {
        return this.protocol_version;
    }

    public Vector ls(String str) {
        byte[] openDirectory = openDirectory(str);
        Vector scanDirectory = scanDirectory(openDirectory);
        closeHandle(openDirectory);
        return scanDirectory;
    }

    public SFTPv3FileAttributes lstat(String str) {
        return statBoth(str, 7);
    }

    public void mkdir(String str, int i) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        typesWriter.writeUINT32(4);
        typesWriter.writeUINT32(i);
        sendMessage(14, generateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(generateNextRequestID);
    }

    public void mkdirs(String str, int i) {
        SFTPv3FileAttributes _stat = _stat(str);
        if (_stat != null && _stat.isDirectory()) {
            return;
        }
        int lastIndexOf = str.lastIndexOf(new ObfuscatedString(new long[]{-1687136258359024039L, 3450455262871768153L}).toString());
        if (lastIndexOf > 0) {
            mkdirs(str.substring(0, lastIndexOf), i);
        }
        try {
            mkdir(str, i);
        } catch (IOException e) {
            throw ((IOException) new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8483949935346635766L, 8709809798549380665L, 7985054056271110043L}), new StringBuilder(), str)).initCause(e));
        }
    }

    public void mv(String str, String str2) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        typesWriter.writeString(str2, this.charsetName);
        sendMessage(18, generateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(generateNextRequestID);
    }

    public SFTPv3FileHandle openFileRO(String str) {
        return openFile(str, 1, null);
    }

    public SFTPv3FileHandle openFileRW(String str) {
        return openFile(str, 3, null);
    }

    public int read(SFTPv3FileHandle sFTPv3FileHandle, long j, byte[] bArr, int i, int i2) {
        checkHandleValidAndOpen(sFTPv3FileHandle);
        if (i2 <= 32768 && i2 > 0) {
            int generateNextRequestID = generateNextRequestID();
            TypesWriter typesWriter = new TypesWriter();
            byte[] bArr2 = sFTPv3FileHandle.fileHandle;
            typesWriter.writeString(bArr2, 0, bArr2.length);
            typesWriter.writeUINT64(j);
            typesWriter.writeUINT32(i2);
            PrintStream printStream = this.debug;
            if (printStream != null) {
                printStream.println(new ObfuscatedString(new long[]{1229821642056742872L, -2044026969999904326L, 9034997063306323918L, 1192709969096052241L}).toString());
                this.debug.flush();
            }
            sendMessage(5, generateNextRequestID, typesWriter.getBytes());
            TypesReader typesReader = new TypesReader(receiveMessage(34000));
            int readByte = typesReader.readByte();
            if (typesReader.readUINT32() != generateNextRequestID) {
                throw new IOException(new ObfuscatedString(new long[]{-3143065446019388190L, -4919491934307501693L, -4914029733228988908L, 65252833071540298L, -7938329739450791938L, 9143850242205862721L}).toString());
            }
            if (readByte == 103) {
                PrintStream printStream2 = this.debug;
                if (printStream2 != null) {
                    printStream2.println(new ObfuscatedString(new long[]{-2102397614314376383L, 3037387992236963254L, 1575245592951384908L, -3021271729107392675L}).toString());
                    this.debug.flush();
                }
                int readUINT32 = typesReader.readUINT32();
                if (readUINT32 >= 0 && readUINT32 <= i2) {
                    typesReader.readBytes(bArr, i, readUINT32);
                    return readUINT32;
                }
                throw new IOException(new ObfuscatedString(new long[]{-8094764552835928033L, 7222156269973322230L, -7837454825628200796L, 2483648300146605815L, -4497020254762862058L, 7394791168181539680L}).toString());
            }
            if (readByte == 101) {
                int readUINT322 = typesReader.readUINT32();
                if (readUINT322 == 1) {
                    PrintStream printStream3 = this.debug;
                    if (printStream3 == null) {
                        return -1;
                    }
                    printStream3.println(new ObfuscatedString(new long[]{4429863759029769083L, 8182120353017161283L, 8744427159771834045L}).toString());
                    this.debug.flush();
                    return -1;
                }
                throw new SFTPException(typesReader.readString(), readUINT322);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-6091654651763117251L, 585345098678267643L, -4411253046789664572L, -3218387316796612424L, -2778627022743412602L, 7800812194821428875L, 6557964051650417889L}).toString());
            sb.append(readByte);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{9149974086056849064L, 2815261454534261496L}), sb));
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1391481802370848717L, -9068392071978551389L, -6203784498164560243L, 6460946478879383991L}).toString());
    }

    public String readLink(String str) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{-2522192843660337722L, -7223820123809054083L, -7495145872401098193L, -3975421379738024794L, 5283772398022650221L}).toString());
            this.debug.flush();
        }
        sendMessage(19, generateNextRequestID, typesWriter.getBytes());
        byte[] receiveMessage = receiveMessage(34000);
        PrintStream printStream2 = this.debug;
        if (printStream2 != null) {
            printStream2.println(new ObfuscatedString(new long[]{-3312481745168762221L, -6888412561809637791L, 8319524754802735466L}).toString());
            this.debug.flush();
        }
        TypesReader typesReader = new TypesReader(receiveMessage);
        int readByte = typesReader.readByte();
        if (typesReader.readUINT32() == generateNextRequestID) {
            if (readByte == 104) {
                if (typesReader.readUINT32() == 1) {
                    return typesReader.readString(this.charsetName);
                }
                throw new IOException(new ObfuscatedString(new long[]{3842329549807865649L, 5789120786502054900L, -6115774188890569807L, 6375862478682730794L, -3548784187215760983L, -1711921116428758764L, 1525310655900614265L}).toString());
            }
            if (readByte != 101) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{8746792878669064293L, -7930537315623898672L, -2896137378127916077L, 5144823591399602434L, 4705793629543316073L, 2704311613928345572L, -2045248329175738304L}).toString());
                sb.append(readByte);
                throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2726651425878386136L, 6257081657409327403L}), sb));
            }
            throw new SFTPException(typesReader.readString(), typesReader.readUINT32());
        }
        throw new IOException(new ObfuscatedString(new long[]{399812131292744727L, 2049939111193898370L, -6508708054959602786L, -5168214270358583166L, -3657155914446819575L, -2596895243410471146L}).toString());
    }

    public void rm(String str) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        sendMessage(13, generateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(generateNextRequestID);
    }

    public void rmdir(String str) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        sendMessage(15, generateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(generateNextRequestID);
    }

    public void setCharset(String str) {
        if (str == null) {
            this.charsetName = str;
            return;
        }
        try {
            Charset.forName(str);
            this.charsetName = str;
        } catch (Exception e) {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{-6820062740636209606L, 8861634670388148977L, 9024939819006483188L, 1475436972358430422L, 184128749906719414L}).toString()).initCause(e));
        }
    }

    public void setstat(String str, SFTPv3FileAttributes sFTPv3FileAttributes) {
        int generateNextRequestID = generateNextRequestID();
        TypesWriter typesWriter = new TypesWriter();
        typesWriter.writeString(str, this.charsetName);
        typesWriter.writeBytes(createAttrs(sFTPv3FileAttributes));
        PrintStream printStream = this.debug;
        if (printStream != null) {
            printStream.println(new ObfuscatedString(new long[]{-5752298605966012199L, 6650628907600711445L, -4060382541362994001L, -3765679254540147524L, -1804698282677363160L}).toString());
            this.debug.flush();
        }
        sendMessage(9, generateNextRequestID, typesWriter.getBytes());
        expectStatusOKMessage(generateNextRequestID);
    }

    public SFTPv3FileAttributes stat(String str) {
        return statBoth(str, 17);
    }

    public void write(SFTPv3FileHandle sFTPv3FileHandle, long j, byte[] bArr, int i, int i2) {
        checkHandleValidAndOpen(sFTPv3FileHandle);
        while (i2 > 0) {
            int i3 = 32768;
            if (i2 <= 32768) {
                i3 = i2;
            }
            int generateNextRequestID = generateNextRequestID();
            TypesWriter typesWriter = new TypesWriter();
            byte[] bArr2 = sFTPv3FileHandle.fileHandle;
            typesWriter.writeString(bArr2, 0, bArr2.length);
            typesWriter.writeUINT64(j);
            typesWriter.writeString(bArr, i, i3);
            PrintStream printStream = this.debug;
            if (printStream != null) {
                printStream.println(new ObfuscatedString(new long[]{4531520365152596481L, 5369378840502119403L, -5780124739311886057L, 6924753727468151279L}).toString());
                this.debug.flush();
            }
            sendMessage(6, generateNextRequestID, typesWriter.getBytes());
            j += i3;
            i += i3;
            i2 -= i3;
            TypesReader typesReader = new TypesReader(receiveMessage(34000));
            int readByte = typesReader.readByte();
            if (typesReader.readUINT32() == generateNextRequestID) {
                if (readByte == 101) {
                    int readUINT32 = typesReader.readUINT32();
                    if (readUINT32 != 0) {
                        throw new SFTPException(typesReader.readString(), readUINT32);
                    }
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{4453358589484980931L, 124360118758869556L, -2868303202640941176L, 5075287751126789490L, 4167928528741430894L, -6926944294285873702L, 4019626718314622826L}).toString());
                    sb.append(readByte);
                    throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5448141304391136212L, 1537162842590626080L}), sb));
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{4919083192423082921L, -1044977069138598875L, 5552303696211480448L, -3616446553515778391L, 8989265732250310520L, 3897702092871791746L}).toString());
            }
        }
    }

    public OutputStream writeToFile(String str) {
        final SFTPv3FileHandle createFile = createFile(str);
        return new OutputStream() { // from class: com.trilead.ssh2.SFTPv3Client.1
            private long offset = 0;

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                SFTPv3Client.this.closeFile(createFile);
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                write(new byte[]{(byte) i});
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                SFTPv3Client.this.write(createFile, this.offset, bArr, i, i2);
                this.offset += i2;
            }
        };
    }

    public SFTPv3FileHandle createFile(String str, SFTPv3FileAttributes sFTPv3FileAttributes) {
        return openFile(str, 11, sFTPv3FileAttributes);
    }

    public SFTPv3FileHandle createFileTruncate(String str, SFTPv3FileAttributes sFTPv3FileAttributes) {
        return openFile(str, 27, sFTPv3FileAttributes);
    }

    private final void sendMessage(int i, int i2, byte[] bArr) {
        sendMessage(i, i2, bArr, 0, bArr.length);
    }

    public SFTPv3Client(Connection connection) {
        this(connection, null);
    }

    public InputStream read(String str) {
        final SFTPv3FileHandle openFileRO = openFileRO(str);
        return new InputStream() { // from class: com.trilead.ssh2.SFTPv3Client.2
            private long offset = 0;

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                SFTPv3Client.this.closeFile(openFileRO);
            }

            @Override // java.io.InputStream
            public int read() {
                byte[] bArr = new byte[1];
                if (read(bArr) < 0) {
                    return -1;
                }
                return bArr[0];
            }

            @Override // java.io.InputStream
            public long skip(long j) {
                this.offset += j;
                return j;
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                int read = SFTPv3Client.this.read(openFileRO, this.offset, bArr, i, i2);
                if (read < 0) {
                    return -1;
                }
                this.offset += read;
                return read;
            }
        };
    }
}
