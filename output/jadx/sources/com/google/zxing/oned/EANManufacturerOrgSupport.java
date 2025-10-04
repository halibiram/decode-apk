package com.google.zxing.oned;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal.http.HttpStatusCodesKt;

/* loaded from: classes3.dex */
final class EANManufacturerOrgSupport {
    private final List<int[]> ranges = new ArrayList();
    private final List<String> countryIdentifiers = new ArrayList();

    private void add(int[] iArr, String str) {
        this.ranges.add(iArr);
        this.countryIdentifiers.add(str);
    }

    private synchronized void initIfNeeded() {
        if (this.ranges.isEmpty()) {
            add(new int[]{0, 19}, new ObfuscatedString(new long[]{3553250436691387495L, 3443870567067783593L}).toString());
            add(new int[]{30, 39}, new ObfuscatedString(new long[]{-4478710818072690485L, 8801728273511258067L}).toString());
            add(new int[]{60, 139}, new ObfuscatedString(new long[]{-3669542122939959447L, 7957600174708129188L}).toString());
            add(new int[]{300, 379}, new ObfuscatedString(new long[]{6602946060960834299L, 2863670581703499123L}).toString());
            add(new int[]{380}, new ObfuscatedString(new long[]{3187967693706216903L, -5107929561914036666L}).toString());
            add(new int[]{383}, new ObfuscatedString(new long[]{5714962409973013984L, 8660457922707482112L}).toString());
            add(new int[]{385}, new ObfuscatedString(new long[]{-1162719947589114932L, -4648941579443789994L}).toString());
            add(new int[]{387}, new ObfuscatedString(new long[]{-8567881318449498740L, 3271347377366708517L}).toString());
            add(new int[]{HttpStatusCodesKt.HTTP_BAD_REQUEST, 440}, new ObfuscatedString(new long[]{5201041975173648918L, -2978455052800773459L}).toString());
            add(new int[]{450, 459}, new ObfuscatedString(new long[]{6342200621224739880L, -7331557397451024408L}).toString());
            add(new int[]{460, 469}, new ObfuscatedString(new long[]{3652427799545724769L, -5313818803583439186L}).toString());
            add(new int[]{471}, new ObfuscatedString(new long[]{-219381632659006429L, -4027395410790853234L}).toString());
            add(new int[]{474}, new ObfuscatedString(new long[]{-4231300374114812746L, 3461560980045497062L}).toString());
            add(new int[]{475}, new ObfuscatedString(new long[]{1203569911742770772L, 2643211038300124411L}).toString());
            add(new int[]{476}, new ObfuscatedString(new long[]{439744302798354026L, 7637346105817223330L}).toString());
            add(new int[]{477}, new ObfuscatedString(new long[]{-82016502437578591L, -7323203635262509902L}).toString());
            add(new int[]{478}, new ObfuscatedString(new long[]{-2586337790411630650L, -1062896138353603692L}).toString());
            add(new int[]{479}, new ObfuscatedString(new long[]{-7257774756469843798L, 2001541229698714840L}).toString());
            add(new int[]{480}, new ObfuscatedString(new long[]{7841651225899409545L, 3612637849616115224L}).toString());
            add(new int[]{481}, new ObfuscatedString(new long[]{7275939073974139605L, -2027859904006336502L}).toString());
            add(new int[]{482}, new ObfuscatedString(new long[]{-4805370204714750400L, -3224232414173154123L}).toString());
            add(new int[]{484}, new ObfuscatedString(new long[]{-8927251482584264083L, 8894826777763991362L}).toString());
            add(new int[]{485}, new ObfuscatedString(new long[]{1938230587642423232L, 280902679531835402L}).toString());
            add(new int[]{486}, new ObfuscatedString(new long[]{-3646886853420484057L, -4093169817190331129L}).toString());
            add(new int[]{487}, new ObfuscatedString(new long[]{5541215926471611199L, -3783932805933215516L}).toString());
            add(new int[]{489}, new ObfuscatedString(new long[]{-8939635404242869109L, 2604709263106295071L}).toString());
            add(new int[]{490, 499}, new ObfuscatedString(new long[]{6943476552082654762L, 5539292829694147774L}).toString());
            add(new int[]{500, 509}, new ObfuscatedString(new long[]{-4358304603879737087L, -205084558550324722L}).toString());
            add(new int[]{520}, new ObfuscatedString(new long[]{1292129257247609757L, -9172360932593081621L}).toString());
            add(new int[]{528}, new ObfuscatedString(new long[]{-9154757808294124344L, -7401846151877966107L}).toString());
            add(new int[]{529}, new ObfuscatedString(new long[]{-8338843745229047288L, -8724763755040676956L}).toString());
            add(new int[]{531}, new ObfuscatedString(new long[]{-4232417086775491343L, -4383436751074771343L}).toString());
            add(new int[]{535}, new ObfuscatedString(new long[]{3799856749485834476L, -7801281034258288067L}).toString());
            add(new int[]{539}, new ObfuscatedString(new long[]{-7305287073890230516L, 1345611569714238091L}).toString());
            add(new int[]{540, 549}, new ObfuscatedString(new long[]{-3922655590153783172L, -9008164061701057126L}).toString());
            add(new int[]{560}, new ObfuscatedString(new long[]{2418405236437547525L, -5685192555520514674L}).toString());
            add(new int[]{569}, new ObfuscatedString(new long[]{3928312611876087141L, 8607279234603925707L}).toString());
            add(new int[]{570, 579}, new ObfuscatedString(new long[]{-7551859085569845400L, 1262763142235425131L}).toString());
            add(new int[]{590}, new ObfuscatedString(new long[]{2536583793863129802L, -2154409863771301671L}).toString());
            add(new int[]{594}, new ObfuscatedString(new long[]{5603074655581014286L, 2616726381099427261L}).toString());
            add(new int[]{599}, new ObfuscatedString(new long[]{5650775984968175702L, -7013428193897321773L}).toString());
            add(new int[]{600, 601}, new ObfuscatedString(new long[]{-3016165300098241035L, 3196481386788977712L}).toString());
            add(new int[]{TypedValues.MotionType.TYPE_EASING}, new ObfuscatedString(new long[]{-4568485056526740287L, -4553500583881681652L}).toString());
            add(new int[]{TypedValues.MotionType.TYPE_DRAW_PATH}, new ObfuscatedString(new long[]{3453868590418068413L, -2793407443279725538L}).toString());
            add(new int[]{TypedValues.MotionType.TYPE_POLAR_RELATIVETO}, new ObfuscatedString(new long[]{8445627344200140121L, 206732430587621658L}).toString());
            add(new int[]{TypedValues.MotionType.TYPE_QUANTIZE_INTERPOLATOR_TYPE}, new ObfuscatedString(new long[]{-6288473846453495645L, 5896511237668350193L}).toString());
            add(new int[]{613}, new ObfuscatedString(new long[]{-3337771165877441196L, -2567110468951795364L}).toString());
            add(new int[]{616}, new ObfuscatedString(new long[]{-3571162377663301358L, -2106940069600834084L}).toString());
            add(new int[]{618}, new ObfuscatedString(new long[]{-5004345542592630585L, 6416921203245502578L}).toString());
            add(new int[]{619}, new ObfuscatedString(new long[]{7195132157118815027L, 7762471523217425004L}).toString());
            add(new int[]{621}, new ObfuscatedString(new long[]{3461496551940451236L, 361943201189035000L}).toString());
            add(new int[]{622}, new ObfuscatedString(new long[]{-55948050065671479L, -6111426237961944074L}).toString());
            add(new int[]{624}, new ObfuscatedString(new long[]{7652904838162697375L, 8158066971195070303L}).toString());
            add(new int[]{625}, new ObfuscatedString(new long[]{1121363072018775990L, 5057296479760132388L}).toString());
            add(new int[]{626}, new ObfuscatedString(new long[]{8416767313978905966L, 6112425405858100241L}).toString());
            add(new int[]{627}, new ObfuscatedString(new long[]{-2920424531609909794L, 938035363422034953L}).toString());
            add(new int[]{628}, new ObfuscatedString(new long[]{-4023601631454452858L, 7045582560710822417L}).toString());
            add(new int[]{629}, new ObfuscatedString(new long[]{492368110241692912L, 3434432124843771513L}).toString());
            add(new int[]{640, 649}, new ObfuscatedString(new long[]{-832009142654632500L, -6496422014475889983L}).toString());
            add(new int[]{690, 695}, new ObfuscatedString(new long[]{-9033684595002092697L, -6924742961252110342L}).toString());
            add(new int[]{TypedValues.TransitionType.TYPE_DURATION, 709}, new ObfuscatedString(new long[]{784886682435609293L, -7881173219960893186L}).toString());
            add(new int[]{729}, new ObfuscatedString(new long[]{-6085426043127444972L, -6144252775404355490L}).toString());
            add(new int[]{730, 739}, new ObfuscatedString(new long[]{7140458640596746686L, -51138604570842028L}).toString());
            add(new int[]{740}, new ObfuscatedString(new long[]{4377317079878887750L, -2855169073205543883L}).toString());
            add(new int[]{741}, new ObfuscatedString(new long[]{-2027879158344673097L, 8275755100457668279L}).toString());
            add(new int[]{742}, new ObfuscatedString(new long[]{-917944213283265199L, 449476397926189186L}).toString());
            add(new int[]{743}, new ObfuscatedString(new long[]{-369468305482968070L, 7807521301591278212L}).toString());
            add(new int[]{744}, new ObfuscatedString(new long[]{-7728074751058724781L, -2033251153793596021L}).toString());
            add(new int[]{745}, new ObfuscatedString(new long[]{1920599728179456979L, 2158147714466010072L}).toString());
            add(new int[]{746}, new ObfuscatedString(new long[]{-3206000491956119143L, 1647787310924067590L}).toString());
            add(new int[]{750}, new ObfuscatedString(new long[]{-2356877381851720465L, -2629102078458215670L}).toString());
            add(new int[]{754, 755}, new ObfuscatedString(new long[]{-6090609591706315843L, -7148740281276132279L}).toString());
            add(new int[]{759}, new ObfuscatedString(new long[]{4260997190283615708L, -1205838714490556217L}).toString());
            add(new int[]{760, 769}, new ObfuscatedString(new long[]{-4934422539001717996L, -6630754228613401916L}).toString());
            add(new int[]{770}, new ObfuscatedString(new long[]{-4715043696956795210L, -5865881386168776796L}).toString());
            add(new int[]{773}, new ObfuscatedString(new long[]{-9098524147844727221L, -7545114731711963448L}).toString());
            add(new int[]{775}, new ObfuscatedString(new long[]{1672749836139131394L, 6844931830114579805L}).toString());
            add(new int[]{777}, new ObfuscatedString(new long[]{-1053711378813004929L, -3108826389069055260L}).toString());
            add(new int[]{779}, new ObfuscatedString(new long[]{1961043260562132950L, 163604381710645063L}).toString());
            add(new int[]{780}, new ObfuscatedString(new long[]{-6059222247501301803L, -1029050289560142669L}).toString());
            add(new int[]{784}, new ObfuscatedString(new long[]{-8769055866533354175L, -7972587598515019088L}).toString());
            add(new int[]{785}, new ObfuscatedString(new long[]{-1200672903341246444L, 5066122852036787955L}).toString());
            add(new int[]{786}, new ObfuscatedString(new long[]{2827841839366835662L, 5773129199880196921L}).toString());
            add(new int[]{789, 790}, new ObfuscatedString(new long[]{-4209638574787987362L, -902695128833994292L}).toString());
            add(new int[]{800, 839}, new ObfuscatedString(new long[]{-6683961523184158753L, 8623809163891956303L}).toString());
            add(new int[]{840, 849}, new ObfuscatedString(new long[]{7184547359988668131L, 5351538280720327146L}).toString());
            add(new int[]{850}, new ObfuscatedString(new long[]{6260590481795073950L, 8762118916161535406L}).toString());
            add(new int[]{858}, new ObfuscatedString(new long[]{-114087081778585884L, -9180847044306051351L}).toString());
            add(new int[]{859}, new ObfuscatedString(new long[]{-5076505474113558390L, -5666114719709383230L}).toString());
            add(new int[]{860}, new ObfuscatedString(new long[]{-4689983435768833956L, 7393444874109493268L}).toString());
            add(new int[]{865}, new ObfuscatedString(new long[]{5287736762458056029L, 6058375459522701546L}).toString());
            add(new int[]{867}, new ObfuscatedString(new long[]{-100233235376638234L, -3310097838513216962L}).toString());
            add(new int[]{868, 869}, new ObfuscatedString(new long[]{-3630790498639824530L, -7027103957972605441L}).toString());
            add(new int[]{870, 879}, new ObfuscatedString(new long[]{-8100681342822518371L, 8357422757188841054L}).toString());
            add(new int[]{880}, new ObfuscatedString(new long[]{-1143223345060125154L, -6701574412116352628L}).toString());
            add(new int[]{885}, new ObfuscatedString(new long[]{5448273673670967840L, -4541230600244276391L}).toString());
            add(new int[]{888}, new ObfuscatedString(new long[]{-1063188253060001668L, 5710446879380302592L}).toString());
            add(new int[]{890}, new ObfuscatedString(new long[]{7105137614994293308L, 5599752307575042113L}).toString());
            add(new int[]{893}, new ObfuscatedString(new long[]{-5519361481080082161L, -5519982193575401226L}).toString());
            add(new int[]{896}, new ObfuscatedString(new long[]{-7990107109495455705L, -7978560120142571401L}).toString());
            add(new int[]{899}, new ObfuscatedString(new long[]{-6517151959956611072L, 3489538442521606499L}).toString());
            add(new int[]{TypedValues.Custom.TYPE_INT, 919}, new ObfuscatedString(new long[]{-4279046474520696221L, -6518129840367485104L}).toString());
            add(new int[]{930, 939}, new ObfuscatedString(new long[]{4517825865216079145L, 1350254173053898891L}).toString());
            add(new int[]{940, 949}, new ObfuscatedString(new long[]{-7424881456520341042L, -5405139214488970291L}).toString());
            add(new int[]{955}, new ObfuscatedString(new long[]{2748861335068474879L, 1617226086507439338L}).toString());
            add(new int[]{958}, new ObfuscatedString(new long[]{4241436528519903457L, -4379359897672891054L}).toString());
        }
    }

    public String lookupCountryIdentifier(String str) {
        int[] iArr;
        int i;
        initIfNeeded();
        int parseInt = Integer.parseInt(str.substring(0, 3));
        int size = this.ranges.size();
        for (int i2 = 0; i2 < size && parseInt >= (i = (iArr = this.ranges.get(i2))[0]); i2++) {
            if (iArr.length != 1) {
                i = iArr[1];
            }
            if (parseInt <= i) {
                return this.countryIdentifiers.get(i2);
            }
        }
        return null;
    }
}
