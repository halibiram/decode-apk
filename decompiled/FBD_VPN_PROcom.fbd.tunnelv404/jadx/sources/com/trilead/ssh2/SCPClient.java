package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public class SCPClient {
    Connection conn;

    /* loaded from: classes3.dex */
    public class LenNamePair {
        String filename;
        long length;

        public LenNamePair() {
        }
    }

    public SCPClient(Connection connection) {
        if (connection != null) {
            this.conn = connection;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2631959189126748821L, 3079550246328989148L, -1618364666063652463L, 8684644388793399584L, -5359109861314522125L}).toString());
    }

    private LenNamePair parseCLine(String str) {
        if (str.length() >= 8) {
            if (str.charAt(4) == ' ' && str.charAt(5) != ' ') {
                int indexOf = str.indexOf(32, 5);
                if (indexOf != -1) {
                    String substring = str.substring(5, indexOf);
                    String substring2 = str.substring(indexOf + 1);
                    if (substring.length() > 0 && substring2.length() > 0) {
                        if (substring2.length() + substring.length() + 6 == str.length()) {
                            try {
                                long parseLong = Long.parseLong(substring);
                                if (parseLong >= 0) {
                                    LenNamePair lenNamePair = new LenNamePair();
                                    lenNamePair.length = parseLong;
                                    lenNamePair.filename = substring2;
                                    return lenNamePair;
                                }
                                throw new IOException(new ObfuscatedString(new long[]{4867208108144170541L, -6881703491543753646L, -6767765411493157287L, 3378255766078651872L, 4557510197056431834L, -7118693274897103450L, 8172254036610701415L, 3712182246744526341L, 8960526538572816215L}).toString());
                            } catch (NumberFormatException unused) {
                                throw new IOException(new ObfuscatedString(new long[]{2330145176471988800L, -8591356756194170930L, 2869082107962950193L, -6321833087079177855L, -3853873699027444532L, 7635423637606299751L, 1570791067114032802L, -3459654163101683876L, -4763675370819679553L, 937660186716636519L}).toString());
                            }
                        }
                        throw new IOException(new ObfuscatedString(new long[]{588045827373745802L, 5097727494387502162L, 4881845770431256252L, -2496450402815201231L, 3356972811686805169L, -4028490920466998490L, -1710093813073419338L}).toString());
                    }
                    throw new IOException(new ObfuscatedString(new long[]{-7413334499422069372L, -1054236371540312326L, -3443119209486869360L, 7518406143032559462L, 6069624737394614605L, -62520416616487668L, 4005006327233289421L}).toString());
                }
                throw new IOException(new ObfuscatedString(new long[]{3897521061741810082L, 6218513520555904105L, -3839757572419791781L, 5575768871750440598L, 6819823160173972380L, 1651271840369633223L, -1225354744538788199L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{1403369804600519845L, 9104554936237465604L, 3673138952835895155L, -7392231286115422454L, 2208987460582543012L, 291738952587416658L, -3919955746148946269L}).toString());
        }
        throw new IOException(new ObfuscatedString(new long[]{564751885085686174L, 1590793268295638838L, 858611571521696813L, -1128807894872101506L, -6584422509103609267L, 675237102822592596L, 669941121571878243L, 2678672592372708620L, -4351795239269336938L}).toString());
    }

    private void readResponse(InputStream inputStream) {
        int read = inputStream.read();
        if (read == 0) {
            return;
        }
        if (read == 1) {
            String receiveLine = receiveLine(inputStream);
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{2810888765004185348L, -2071683985756056635L, 8872281755292457674L, 2162602978128229496L, -4863190784374710792L, -8415203367335870167L}).toString());
            sb.append(receiveLine);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{5533516474737408590L, -6679603110550277178L}), sb));
        }
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1825833906287139629L, -3516881157281315928L, -5429993268375883895L, -350401564642599303L, 2268296295022336688L, 1718725850380117022L}), new StringBuilder(), read));
    }

    private void receiveFiles(Session session, OutputStream[] outputStreamArr) {
        int read;
        String receiveLine;
        byte[] bArr = new byte[8192];
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(session.getStdin(), 512);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(session.getStdout(), 40000);
        bufferedOutputStream.write(0);
        bufferedOutputStream.flush();
        for (OutputStream outputStream : outputStreamArr) {
            do {
                read = bufferedInputStream.read();
                if (read >= 0) {
                    receiveLine = receiveLine(bufferedInputStream);
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{6888738583323054011L, -5109934841100433580L, -2824981208447898626L, 482959620236445876L, 750071446281057056L, 4812083255845989399L}).toString());
                }
            } while (read == 84);
            if (read == 1 || read == 2) {
                throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-2877907832553028338L, 7331111948735238588L, 7205883369326324959L, -862786249304541647L}), new StringBuilder(), receiveLine));
            }
            if (read == 67) {
                LenNamePair parseCLine = parseCLine(receiveLine);
                bufferedOutputStream.write(0);
                bufferedOutputStream.flush();
                long j = parseCLine.length;
                while (j > 0) {
                    int read2 = bufferedInputStream.read(bArr, 0, j > ((long) 8192) ? 8192 : (int) j);
                    if (read2 >= 0) {
                        outputStream.write(bArr, 0, read2);
                        j -= read2;
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{-6747840649869018341L, -7572000714458226495L, 2450384783434547233L, -5925214379378863068L, 3251362994232950588L, -4972331346837775963L, -4121799884637605087L}).toString());
                    }
                }
                readResponse(bufferedInputStream);
                bufferedOutputStream.write(0);
                bufferedOutputStream.flush();
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-4808855235706312995L, -106026132958177329L, 8372824912919989195L, -1892878442052295027L}).toString() + ((char) read) + receiveLine);
            }
        }
    }

    private String receiveLine(InputStream inputStream) {
        StringBuilder sb = new StringBuilder(30);
        while (sb.length() <= 8192) {
            int read = inputStream.read();
            if (read >= 0) {
                if (read == 10) {
                    return sb.toString();
                }
                sb.append((char) read);
            } else {
                throw new IOException(new ObfuscatedString(new long[]{3387472961818359644L, -2734414848729282393L, 6408004493452623608L, -3585850771142253237L, 734287804714054421L, 104802227189385837L}).toString());
            }
        }
        throw new IOException(new ObfuscatedString(new long[]{-3142909131583465906L, 952708929353880083L, -3473028845682326603L, -5598771354931435081L, 433195004152601549L}).toString());
    }

    private void sendBytes(Session session, byte[] bArr, String str, String str2) {
        OutputStream stdin = session.getStdin();
        BufferedInputStream bufferedInputStream = new BufferedInputStream(session.getStdout(), 512);
        readResponse(bufferedInputStream);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-2283290573545400042L, -6315147078356450838L}).toString());
        sb.append(str2);
        sb.append(new ObfuscatedString(new long[]{7198209559330877040L, 7809345215933573138L}).toString());
        sb.append(bArr.length);
        sb.append(new ObfuscatedString(new long[]{8647126745151335015L, -3284269379775590599L}).toString());
        sb.append(str);
        String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{9027577314936668708L, 8745463486297193677L}), sb);
        Charset charset = StandardCharsets.ISO_8859_1;
        stdin.write(m3332x9d12c1f4.getBytes(charset));
        stdin.flush();
        readResponse(bufferedInputStream);
        stdin.write(bArr, 0, bArr.length);
        stdin.write(0);
        stdin.flush();
        readResponse(bufferedInputStream);
        stdin.write(new ObfuscatedString(new long[]{-6441771460062406355L, 1431216464302168699L}).toString().getBytes(charset));
        stdin.flush();
    }

    private void sendFiles(Session session, String[] strArr, String[] strArr2, String str) {
        String name;
        int i;
        byte[] bArr = new byte[8192];
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(session.getStdin(), 40000);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(session.getStdout(), 512);
        readResponse(bufferedInputStream);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            File file = new File(strArr[i2]);
            long length = file.length();
            if (strArr2 == null || strArr2.length <= i2 || (name = strArr2[i2]) == null) {
                name = file.getName();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-5689540583879724605L, -1971505007315648250L}).toString());
            sb.append(str);
            sb.append(new ObfuscatedString(new long[]{1180738056743161594L, 1906799040018989773L}).toString());
            sb.append(length);
            sb.append(new ObfuscatedString(new long[]{3460924424121675274L, 2994451671542120807L}).toString());
            sb.append(name);
            bufferedOutputStream.write(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4045423461846667589L, -3728358313063530849L}), sb).getBytes(StandardCharsets.ISO_8859_1));
            bufferedOutputStream.flush();
            readResponse(bufferedInputStream);
            FileInputStream fileInputStream = new FileInputStream(file);
            while (length > 0) {
                if (length > 8192) {
                    i = 8192;
                } else {
                    i = (int) length;
                }
                try {
                    if (fileInputStream.read(bArr, 0, i) == i) {
                        bufferedOutputStream.write(bArr, 0, i);
                        length -= i;
                    } else {
                        throw new IOException(new ObfuscatedString(new long[]{-6979044129111689343L, 4980357145908379216L, -3613526471856364580L, -7959858680811569422L, -4013543487622570432L, -5711045470698336654L}).toString() + strArr[i2]);
                    }
                } finally {
                }
            }
            fileInputStream.close();
            bufferedOutputStream.write(0);
            bufferedOutputStream.flush();
            readResponse(bufferedInputStream);
        }
        bufferedOutputStream.write(new ObfuscatedString(new long[]{8669946224686382523L, -5823360289014382707L}).toString().getBytes(StandardCharsets.ISO_8859_1));
        bufferedOutputStream.flush();
    }

    public void get(String str, String str2) {
        get(new String[]{str}, str2);
    }

    public void put(String str, String str2) {
        put(new String[]{str}, str2, new ObfuscatedString(new long[]{2165934240410594587L, 8514901572184273356L}).toString());
    }

    public void get(String str, OutputStream outputStream) {
        get(new String[]{str}, new OutputStream[]{outputStream});
    }

    public void put(String[] strArr, String str) {
        put(strArr, str, new ObfuscatedString(new long[]{2950890303584606370L, -8978250042160597332L}).toString());
    }

    private void get(String[] strArr, OutputStream[] outputStreamArr) {
        if (strArr != null && outputStreamArr != null) {
            if (strArr.length == outputStreamArr.length) {
                if (strArr.length == 0) {
                    return;
                }
                StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{7705123285457472348L, 328982010061193009L}).toString());
                for (String str : strArr) {
                    if (str != null) {
                        String trim = str.trim();
                        if (trim.length() != 0) {
                            sb.append(new ObfuscatedString(new long[]{-296488052069605674L, 7691207068028892626L}).toString());
                            sb.append(trim);
                        } else {
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{5223707380916088493L, 6552173672214094417L, 5601764616274872829L, 3424682910351167359L, -177135901320367765L}).toString());
                        }
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8357526854504338376L, -1920219354894854284L, -8015025597115687191L, -5870110977034166998L, 6780567140395501438L}).toString());
                    }
                }
                Session session = null;
                try {
                    try {
                        session = this.conn.openSession();
                        session.execCommand(sb.toString());
                        receiveFiles(session, outputStreamArr);
                        session.close();
                        return;
                    } catch (IOException e) {
                        throw new IOException(new ObfuscatedString(new long[]{1848576381110100482L, 1614251465957461757L, -6875411604716400058L, -8642098177196294376L, -4124911875546927821L}).toString(), e);
                    }
                } catch (Throwable th) {
                    if (session != null) {
                        session.close();
                    }
                    throw th;
                }
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{8079404938222187278L, -1127245443023335680L, 9144274238223051865L, 5277482215861446761L, 1908112711526572406L, 4814288539738246023L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{1803493309321228675L, -8898519525297342991L, -8711681884070162124L}).toString());
    }

    public void put(String str, String str2, String str3) {
        put(new String[]{str}, str2, str3);
    }

    public void put(String str, String str2, String str3, String str4) {
        put(new String[]{str}, new String[]{str2}, str3, str4);
    }

    public void put(byte[] bArr, String str, String str2) {
        put(bArr, str, str2, new ObfuscatedString(new long[]{9214845979962237931L, 8211565174238680440L}).toString());
    }

    public void put(byte[] bArr, String str, String str2, String str3) {
        if (str != null && str2 != null && str3 != null) {
            if (str3.length() == 4) {
                for (int i = 0; i < str3.length(); i++) {
                    if (!Character.isDigit(str3.charAt(i))) {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{1163311908344099629L, -8107777183673338038L, 4369372998331159565L}).toString());
                    }
                }
                String trim = str2.trim();
                if (trim.length() <= 0) {
                    trim = new ObfuscatedString(new long[]{-5287150103935938813L, -5041499496278396205L}).toString();
                }
                String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-3596470300308360002L, 4428672336061650667L, 3900906364794789618L}), new StringBuilder(), trim);
                Session session = null;
                try {
                    try {
                        session = this.conn.openSession();
                        session.execCommand(m3336x1aebc6d9);
                        sendBytes(session, bArr, str, str3);
                        session.close();
                        return;
                    } catch (IOException e) {
                        throw new IOException(new ObfuscatedString(new long[]{-7601431430802782268L, -233537783043282865L, 3829980165444837612L, 3547399325290004621L, 8559082415714928720L}).toString(), e);
                    }
                } catch (Throwable th) {
                    if (session != null) {
                        session.close();
                    }
                    throw th;
                }
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4835029480212228423L, 3286490135330351905L, -3485214684600486221L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5083707145560194316L, 1169650636078961982L, 1542575346223895972L}).toString());
    }

    public void get(String[] strArr, String str) {
        if (strArr != null && str != null) {
            if (strArr.length == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{3774473762911615986L, -3531175094979292387L}).toString());
            for (String str2 : strArr) {
                if (str2 != null) {
                    String trim = str2.trim();
                    if (trim.length() != 0) {
                        sb.append(new ObfuscatedString(new long[]{-3946857943154148905L, 578617591803928872L}).toString());
                        sb.append(trim);
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{859519148970045764L, 2686375923123208107L, 5381791568736118227L, -6984804917728949828L, -3091462193619332252L}).toString());
                    }
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2890622727974948466L, -4435887700311451048L, -201525897235818137L, -2946955692929847656L, -8158868813409904882L}).toString());
                }
            }
            Session session = null;
            try {
                try {
                    session = this.conn.openSession();
                    session.execCommand(sb.toString());
                    receiveFiles(session, strArr, str);
                    session.close();
                    return;
                } catch (IOException e) {
                    throw new IOException(new ObfuscatedString(new long[]{3237705645353561672L, 1167490908910331883L, -2230365902504624020L, 2530702236117635312L, -3332491331571049343L}).toString(), e);
                }
            } catch (Throwable th) {
                if (session != null) {
                    session.close();
                }
                throw th;
            }
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{7288109062795338219L, -215415165751482620L, -6950608836938575355L}).toString());
    }

    public void put(String[] strArr, String str, String str2) {
        put(strArr, (String[]) null, str, str2);
    }

    private void receiveFiles(Session session, String[] strArr, String str) {
        int read;
        String receiveLine;
        byte[] bArr = new byte[8192];
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(session.getStdin(), 512);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(session.getStdout(), 40000);
        bufferedOutputStream.write(0);
        bufferedOutputStream.flush();
        for (int i = 0; i < strArr.length; i++) {
            do {
                read = bufferedInputStream.read();
                if (read >= 0) {
                    receiveLine = receiveLine(bufferedInputStream);
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-8337904425819459578L, -8006693879053147410L, 4859199928545529024L, 5807583787454573140L, 1168963517605685561L, -3135246340172682664L}).toString());
                }
            } while (read == 84);
            if (read == 1 || read == 2) {
                throw new IOException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-5623253328318333559L, 8313196010212127647L, -8657656941831842038L, 188650484197433908L}), new StringBuilder(), receiveLine));
            }
            if (read == 67) {
                LenNamePair parseCLine = parseCLine(receiveLine);
                bufferedOutputStream.write(0);
                bufferedOutputStream.flush();
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
                m3341xc20437a5.append(File.separatorChar);
                m3341xc20437a5.append(parseCLine.filename);
                FileOutputStream fileOutputStream = new FileOutputStream(new File(m3341xc20437a5.toString()));
                try {
                    long j = parseCLine.length;
                    while (j > 0) {
                        int read2 = bufferedInputStream.read(bArr, 0, j > ((long) 8192) ? 8192 : (int) j);
                        if (read2 >= 0) {
                            fileOutputStream.write(bArr, 0, read2);
                            j -= read2;
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{-1959008889989773928L, 7833150633549695625L, 1907956065047065993L, -5809311359819574067L, 6857888101141936530L, 1855137339637454234L, -6945690584506297805L}).toString());
                        }
                    }
                    fileOutputStream.close();
                    readResponse(bufferedInputStream);
                    bufferedOutputStream.write(0);
                    bufferedOutputStream.flush();
                } finally {
                }
            } else {
                throw new IOException(new ObfuscatedString(new long[]{-6569200601125373653L, -5087621034552988442L, -5329096017056294866L, 3552175865486717826L}).toString() + ((char) read) + receiveLine);
            }
        }
    }

    public void put(String[] strArr, String[] strArr2, String str, String str2) {
        if (strArr != null && str != null && str2 != null) {
            if (str2.length() == 4) {
                for (int i = 0; i < str2.length(); i++) {
                    if (!Character.isDigit(str2.charAt(i))) {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{8570223003314826606L, -3167512142967426320L, -5127583034828941429L}).toString());
                    }
                }
                if (strArr.length == 0) {
                    return;
                }
                String trim = str.trim();
                if (trim.length() <= 0) {
                    trim = new ObfuscatedString(new long[]{2818543476558430808L, 6048410321467621713L}).toString();
                }
                String m3336x1aebc6d9 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4051891270628965976L, -7884517973161904287L, 3919745314324709438L}), new StringBuilder(), trim);
                for (String str3 : strArr) {
                    if (str3 == null) {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{7949606107538276360L, -5944942084856819803L, -2452658687662314628L, -254303391476951078L, -8423785690247167881L}).toString());
                    }
                }
                Session session = null;
                try {
                    try {
                        session = this.conn.openSession();
                        session.execCommand(m3336x1aebc6d9);
                        sendFiles(session, strArr, strArr2, str2);
                        session.close();
                        return;
                    } catch (IOException e) {
                        throw new IOException(new ObfuscatedString(new long[]{8498980415694002903L, -729923586370739782L, 2807839023248170061L, 6353635528146602972L, 189137686634580091L}).toString(), e);
                    }
                } catch (Throwable th) {
                    if (session != null) {
                        session.close();
                    }
                    throw th;
                }
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{2616480165546027488L, -8098790718426272699L, 3278319768517649281L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5575616092219130961L, -3920814800353537848L, 438094886720330214L}).toString());
    }
}
