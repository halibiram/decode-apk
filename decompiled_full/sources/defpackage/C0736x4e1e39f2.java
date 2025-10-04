package defpackage;

import java.io.File;
import java.util.ArrayDeque;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.AbstractIterator;
import kotlin.io.FileTreeWalk;
import kotlin.io.FileTreeWalk$FileTreeWalkIterator$WhenMappings;
import kotlin.io.FileWalkDirection;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뒨땳든뒼돤뒼듌뎽뎨돵드땤딤딸땰땪된뒵뎹뒐땲땥듟땸땔땮뒈둠땐땦땵땤땠뒀듨땁땄둡뒷돷듻땨땬됩됨딀땰돝둠돰듰돳땥땹듸땥땻땧둘뎡딻땠됩딠뎻듐돰뎨뒛됫드땀딟뒬땜딞땟두돛땠듌뒤딞돴둑듐땜뒝뎸두뒛된듔땃딅땅둔땪뒘듌땅딎뒼뒐듰둣뎰둥됩돝땐들뎸돼땟뒵땣듔듬딻땀땫땫땬딟듻땁뒝딻딌, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0736x4e1e39f2 extends AbstractIterator {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final ArrayDeque f4647x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final /* synthetic */ FileTreeWalk f4648x75d576dc;

    public C0736x4e1e39f2(FileTreeWalk fileTreeWalk) {
        File file;
        File file2;
        File rootFile;
        File file3;
        this.f4648x75d576dc = fileTreeWalk;
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f4647x1378447b = arrayDeque;
        file = fileTreeWalk.f1382xfbe0c504;
        if (file.isDirectory()) {
            file3 = fileTreeWalk.f1382xfbe0c504;
            arrayDeque.push(m3319x1378447b(file3));
            return;
        }
        file2 = fileTreeWalk.f1382xfbe0c504;
        if (file2.isFile()) {
            rootFile = fileTreeWalk.f1382xfbe0c504;
            Intrinsics.checkNotNullParameter(rootFile, "rootFile");
            arrayDeque.push(new AbstractC0737x7ad1af04(rootFile));
            return;
        }
        done();
    }

    @Override // kotlin.collections.AbstractIterator
    public final void computeNext() {
        File file;
        File mo3318xfbe0c504;
        int i;
        while (true) {
            ArrayDeque arrayDeque = this.f4647x1378447b;
            AbstractC0737x7ad1af04 abstractC0737x7ad1af04 = (AbstractC0737x7ad1af04) arrayDeque.peek();
            if (abstractC0737x7ad1af04 == null) {
                file = null;
                break;
            }
            mo3318xfbe0c504 = abstractC0737x7ad1af04.mo3318xfbe0c504();
            if (mo3318xfbe0c504 == null) {
                arrayDeque.pop();
            } else {
                if (Intrinsics.areEqual(mo3318xfbe0c504, abstractC0737x7ad1af04.f4649xfbe0c504) || !mo3318xfbe0c504.isDirectory()) {
                    break;
                }
                int size = arrayDeque.size();
                i = this.f4648x75d576dc.f1387x9e171bf9;
                if (size >= i) {
                    break;
                } else {
                    arrayDeque.push(m3319x1378447b(mo3318xfbe0c504));
                }
            }
        }
        file = mo3318xfbe0c504;
        if (file != null) {
            setNext(file);
        } else {
            done();
        }
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final AbstractC0732xcccac0cd m3319x1378447b(File file) {
        FileWalkDirection fileWalkDirection;
        fileWalkDirection = this.f4648x75d576dc.f1383x3271d0aa;
        int i = FileTreeWalk$FileTreeWalkIterator$WhenMappings.$EnumSwitchMapping$0[fileWalkDirection.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return new C0733x6f1afe2d(this, file);
            }
            throw new NoWhenBranchMatchedException();
        }
        return new C0735xcc3343d4(this, file);
    }
}
