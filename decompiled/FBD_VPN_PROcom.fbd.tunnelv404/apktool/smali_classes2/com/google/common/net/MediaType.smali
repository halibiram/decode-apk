.class public final Lcom/google/common/net/MediaType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation runtime Lcom/google/common/net/ElementTypesAreNonnullByDefault;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/MediaType$Tokenizer;
    }
.end annotation


# static fields
.field public static final AAC_AUDIO:Lcom/google/common/net/MediaType;

.field public static final ANY_APPLICATION_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_AUDIO_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_FONT_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_IMAGE_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_TEXT_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_TYPE:Lcom/google/common/net/MediaType;

.field public static final ANY_VIDEO_TYPE:Lcom/google/common/net/MediaType;

.field public static final APPLE_MOBILE_CONFIG:Lcom/google/common/net/MediaType;

.field public static final APPLE_PASSBOOK:Lcom/google/common/net/MediaType;

.field public static final APPLICATION_BINARY:Lcom/google/common/net/MediaType;

.field private static final APPLICATION_TYPE:Ljava/lang/String;

.field public static final APPLICATION_XML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final ATOM_UTF_8:Lcom/google/common/net/MediaType;

.field private static final AUDIO_TYPE:Ljava/lang/String;

.field public static final BASIC_AUDIO:Lcom/google/common/net/MediaType;

.field public static final BMP:Lcom/google/common/net/MediaType;

.field public static final BZIP2:Lcom/google/common/net/MediaType;

.field public static final CACHE_MANIFEST_UTF_8:Lcom/google/common/net/MediaType;

.field private static final CHARSET_ATTRIBUTE:Ljava/lang/String;

.field public static final CRW:Lcom/google/common/net/MediaType;

.field public static final CSS_UTF_8:Lcom/google/common/net/MediaType;

.field public static final CSV_UTF_8:Lcom/google/common/net/MediaType;

.field public static final DART_UTF_8:Lcom/google/common/net/MediaType;

.field public static final EOT:Lcom/google/common/net/MediaType;

.field public static final EPUB:Lcom/google/common/net/MediaType;

.field public static final FLV_VIDEO:Lcom/google/common/net/MediaType;

.field public static final FONT_COLLECTION:Lcom/google/common/net/MediaType;

.field public static final FONT_OTF:Lcom/google/common/net/MediaType;

.field public static final FONT_SFNT:Lcom/google/common/net/MediaType;

.field public static final FONT_TTF:Lcom/google/common/net/MediaType;

.field private static final FONT_TYPE:Ljava/lang/String;

.field public static final FONT_WOFF:Lcom/google/common/net/MediaType;

.field public static final FONT_WOFF2:Lcom/google/common/net/MediaType;

.field public static final FORM_DATA:Lcom/google/common/net/MediaType;

.field public static final GEO_JSON:Lcom/google/common/net/MediaType;

.field public static final GIF:Lcom/google/common/net/MediaType;

.field public static final GZIP:Lcom/google/common/net/MediaType;

.field public static final HAL_JSON:Lcom/google/common/net/MediaType;

.field public static final HEIF:Lcom/google/common/net/MediaType;

.field public static final HTML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final ICO:Lcom/google/common/net/MediaType;

.field private static final IMAGE_TYPE:Ljava/lang/String;

.field public static final I_CALENDAR_UTF_8:Lcom/google/common/net/MediaType;

.field public static final JAVASCRIPT_UTF_8:Lcom/google/common/net/MediaType;

.field public static final JOSE:Lcom/google/common/net/MediaType;

.field public static final JOSE_JSON:Lcom/google/common/net/MediaType;

.field public static final JP2K:Lcom/google/common/net/MediaType;

.field public static final JPEG:Lcom/google/common/net/MediaType;

.field public static final JSON_UTF_8:Lcom/google/common/net/MediaType;

.field public static final KEY_ARCHIVE:Lcom/google/common/net/MediaType;

.field public static final KML:Lcom/google/common/net/MediaType;

.field public static final KMZ:Lcom/google/common/net/MediaType;

.field private static final KNOWN_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/common/net/MediaType;",
            "Lcom/google/common/net/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final L16_AUDIO:Lcom/google/common/net/MediaType;

.field public static final L24_AUDIO:Lcom/google/common/net/MediaType;

.field private static final LINEAR_WHITE_SPACE:Lcom/google/common/base/CharMatcher;

.field public static final MANIFEST_JSON_UTF_8:Lcom/google/common/net/MediaType;

.field public static final MBOX:Lcom/google/common/net/MediaType;

.field public static final MEDIA_PRESENTATION_DESCRIPTION:Lcom/google/common/net/MediaType;

.field public static final MICROSOFT_EXCEL:Lcom/google/common/net/MediaType;

.field public static final MICROSOFT_OUTLOOK:Lcom/google/common/net/MediaType;

.field public static final MICROSOFT_POWERPOINT:Lcom/google/common/net/MediaType;

.field public static final MICROSOFT_WORD:Lcom/google/common/net/MediaType;

.field public static final MP4_AUDIO:Lcom/google/common/net/MediaType;

.field public static final MP4_VIDEO:Lcom/google/common/net/MediaType;

.field public static final MPEG_AUDIO:Lcom/google/common/net/MediaType;

.field public static final MPEG_VIDEO:Lcom/google/common/net/MediaType;

.field public static final NACL_APPLICATION:Lcom/google/common/net/MediaType;

.field public static final NACL_PORTABLE_APPLICATION:Lcom/google/common/net/MediaType;

.field public static final OCTET_STREAM:Lcom/google/common/net/MediaType;

.field public static final OGG_AUDIO:Lcom/google/common/net/MediaType;

.field public static final OGG_CONTAINER:Lcom/google/common/net/MediaType;

.field public static final OGG_VIDEO:Lcom/google/common/net/MediaType;

.field public static final OOXML_DOCUMENT:Lcom/google/common/net/MediaType;

.field public static final OOXML_PRESENTATION:Lcom/google/common/net/MediaType;

.field public static final OOXML_SHEET:Lcom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_GRAPHICS:Lcom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_PRESENTATION:Lcom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_SPREADSHEET:Lcom/google/common/net/MediaType;

.field public static final OPENDOCUMENT_TEXT:Lcom/google/common/net/MediaType;

.field public static final OPENSEARCH_DESCRIPTION_UTF_8:Lcom/google/common/net/MediaType;

.field private static final PARAMETER_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

.field public static final PDF:Lcom/google/common/net/MediaType;

.field public static final PLAIN_TEXT_UTF_8:Lcom/google/common/net/MediaType;

.field public static final PNG:Lcom/google/common/net/MediaType;

.field public static final POSTSCRIPT:Lcom/google/common/net/MediaType;

.field public static final PROTOBUF:Lcom/google/common/net/MediaType;

.field public static final PSD:Lcom/google/common/net/MediaType;

.field public static final QUICKTIME:Lcom/google/common/net/MediaType;

.field private static final QUOTED_TEXT_MATCHER:Lcom/google/common/base/CharMatcher;

.field public static final RDF_XML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final RTF_UTF_8:Lcom/google/common/net/MediaType;

.field public static final SFNT:Lcom/google/common/net/MediaType;

.field public static final SHOCKWAVE_FLASH:Lcom/google/common/net/MediaType;

.field public static final SKETCHUP:Lcom/google/common/net/MediaType;

.field public static final SOAP_XML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final SVG_UTF_8:Lcom/google/common/net/MediaType;

.field public static final TAR:Lcom/google/common/net/MediaType;

.field public static final TEXT_JAVASCRIPT_UTF_8:Lcom/google/common/net/MediaType;

.field private static final TEXT_TYPE:Ljava/lang/String;

.field public static final THREE_GPP2_VIDEO:Lcom/google/common/net/MediaType;

.field public static final THREE_GPP_VIDEO:Lcom/google/common/net/MediaType;

.field public static final TIFF:Lcom/google/common/net/MediaType;

.field private static final TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

.field public static final TSV_UTF_8:Lcom/google/common/net/MediaType;

.field private static final UTF_8_CONSTANT_PARAMETERS:Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VCARD_UTF_8:Lcom/google/common/net/MediaType;

.field private static final VIDEO_TYPE:Ljava/lang/String;

.field public static final VND_REAL_AUDIO:Lcom/google/common/net/MediaType;

.field public static final VND_WAVE_AUDIO:Lcom/google/common/net/MediaType;

.field public static final VORBIS_AUDIO:Lcom/google/common/net/MediaType;

.field public static final VTT_UTF_8:Lcom/google/common/net/MediaType;

.field public static final WASM_APPLICATION:Lcom/google/common/net/MediaType;

.field public static final WAX_AUDIO:Lcom/google/common/net/MediaType;

.field public static final WEBM_AUDIO:Lcom/google/common/net/MediaType;

.field public static final WEBM_VIDEO:Lcom/google/common/net/MediaType;

.field public static final WEBP:Lcom/google/common/net/MediaType;

.field private static final WILDCARD:Ljava/lang/String;

.field public static final WMA_AUDIO:Lcom/google/common/net/MediaType;

.field public static final WML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final WMV:Lcom/google/common/net/MediaType;

.field public static final WOFF:Lcom/google/common/net/MediaType;

.field public static final WOFF2:Lcom/google/common/net/MediaType;

.field public static final XHTML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final XML_UTF_8:Lcom/google/common/net/MediaType;

.field public static final XRD_UTF_8:Lcom/google/common/net/MediaType;

.field public static final ZIP:Lcom/google/common/net/MediaType;


# instance fields
.field private hashCode:I
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field

.field private final parameters:Lcom/google/common/collect/ImmutableListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parsedCharset:Lcom/google/common/base/Optional;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final subtype:Ljava/lang/String;

.field private toString:Ljava/lang/String;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CHARSET_ATTRIBUTE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v2, 0x3

    new-array v3, v2, [J

    fill-array-data v3, :array_1

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLICATION_TYPE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->AUDIO_TYPE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->IMAGE_TYPE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TEXT_TYPE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_5

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VIDEO_TYPE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FONT_TYPE:Ljava/lang/String;

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_7

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WILDCARD:Ljava/lang/String;

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_8

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/collect/ImmutableListMultimap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->UTF_8_CONSTANT_PARAMETERS:Lcom/google/common/collect/ImmutableListMultimap;

    .line 3
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/google/common/base/CharMatcher;->javaIsoControl()Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/CharMatcher;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v3, 0x20

    .line 5
    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->isNot(C)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_9

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 7
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_a

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/CharMatcher;->noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/base/CharMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->QUOTED_TEXT_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_b

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->LINEAR_WHITE_SPACE:Lcom/google/common/base/CharMatcher;

    .line 9
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    .line 10
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_d

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_TYPE:Lcom/google/common/net/MediaType;

    .line 11
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_f

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_TEXT_TYPE:Lcom/google/common/net/MediaType;

    .line 12
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_10

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_11

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_IMAGE_TYPE:Lcom/google/common/net/MediaType;

    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_12

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_13

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_AUDIO_TYPE:Lcom/google/common/net/MediaType;

    .line 14
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_14

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_15

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_VIDEO_TYPE:Lcom/google/common/net/MediaType;

    .line 15
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_16

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_17

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_APPLICATION_TYPE:Lcom/google/common/net/MediaType;

    .line 16
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_18

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_19

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ANY_FONT_TYPE:Lcom/google/common/net/MediaType;

    .line 17
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_1a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_1b

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CACHE_MANIFEST_UTF_8:Lcom/google/common/net/MediaType;

    .line 19
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_1c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_1d

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CSS_UTF_8:Lcom/google/common/net/MediaType;

    .line 20
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_1e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_1f

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CSV_UTF_8:Lcom/google/common/net/MediaType;

    .line 21
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_20

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_21

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->HTML_UTF_8:Lcom/google/common/net/MediaType;

    .line 22
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_22

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_23

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->I_CALENDAR_UTF_8:Lcom/google/common/net/MediaType;

    .line 23
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_24

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_25

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PLAIN_TEXT_UTF_8:Lcom/google/common/net/MediaType;

    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_26

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_27

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TEXT_JAVASCRIPT_UTF_8:Lcom/google/common/net/MediaType;

    .line 25
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_28

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_29

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TSV_UTF_8:Lcom/google/common/net/MediaType;

    .line 26
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_2b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VCARD_UTF_8:Lcom/google/common/net/MediaType;

    .line 27
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_2d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WML_UTF_8:Lcom/google/common/net/MediaType;

    .line 28
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_2e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_2f

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->XML_UTF_8:Lcom/google/common/net/MediaType;

    .line 29
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_30

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_31

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VTT_UTF_8:Lcom/google/common/net/MediaType;

    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_32

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_33

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->BMP:Lcom/google/common/net/MediaType;

    .line 31
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_34

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_35

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->CRW:Lcom/google/common/net/MediaType;

    .line 32
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_36

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_37

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->GIF:Lcom/google/common/net/MediaType;

    .line 33
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_38

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_39

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ICO:Lcom/google/common/net/MediaType;

    .line 34
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_3b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JPEG:Lcom/google/common/net/MediaType;

    .line 35
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_3d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PNG:Lcom/google/common/net/MediaType;

    .line 36
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_3e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_3f

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PSD:Lcom/google/common/net/MediaType;

    .line 37
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_40

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_41

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SVG_UTF_8:Lcom/google/common/net/MediaType;

    .line 38
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_42

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_43

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TIFF:Lcom/google/common/net/MediaType;

    .line 39
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_44

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_45

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WEBP:Lcom/google/common/net/MediaType;

    .line 40
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_46

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_47

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->HEIF:Lcom/google/common/net/MediaType;

    .line 41
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_48

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_49

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JP2K:Lcom/google/common/net/MediaType;

    .line 42
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_4a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_4b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MP4_AUDIO:Lcom/google/common/net/MediaType;

    .line 43
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_4c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_4d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MPEG_AUDIO:Lcom/google/common/net/MediaType;

    .line 44
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_4e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_4f

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OGG_AUDIO:Lcom/google/common/net/MediaType;

    .line 45
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_50

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_51

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WEBM_AUDIO:Lcom/google/common/net/MediaType;

    .line 46
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_52

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_53

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->L16_AUDIO:Lcom/google/common/net/MediaType;

    .line 47
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_54

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_55

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->L24_AUDIO:Lcom/google/common/net/MediaType;

    .line 48
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_56

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_57

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->BASIC_AUDIO:Lcom/google/common/net/MediaType;

    .line 49
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_58

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_59

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->AAC_AUDIO:Lcom/google/common/net/MediaType;

    .line 50
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_5a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_5b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VORBIS_AUDIO:Lcom/google/common/net/MediaType;

    .line 51
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_5c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_5d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WMA_AUDIO:Lcom/google/common/net/MediaType;

    .line 52
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_5e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_5f

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WAX_AUDIO:Lcom/google/common/net/MediaType;

    .line 53
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_60

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_61

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VND_REAL_AUDIO:Lcom/google/common/net/MediaType;

    .line 54
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_62

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_63

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->VND_WAVE_AUDIO:Lcom/google/common/net/MediaType;

    .line 55
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_64

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_65

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MP4_VIDEO:Lcom/google/common/net/MediaType;

    .line 56
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_66

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_67

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MPEG_VIDEO:Lcom/google/common/net/MediaType;

    .line 57
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_68

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_69

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OGG_VIDEO:Lcom/google/common/net/MediaType;

    .line 58
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_6a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_6b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->QUICKTIME:Lcom/google/common/net/MediaType;

    .line 59
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_6c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_6d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WEBM_VIDEO:Lcom/google/common/net/MediaType;

    .line 60
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_6e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_6f

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WMV:Lcom/google/common/net/MediaType;

    .line 61
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_70

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_71

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FLV_VIDEO:Lcom/google/common/net/MediaType;

    .line 62
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_72

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_73

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->THREE_GPP_VIDEO:Lcom/google/common/net/MediaType;

    .line 63
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_74

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_75

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->THREE_GPP2_VIDEO:Lcom/google/common/net/MediaType;

    .line 64
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_76

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_77

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLICATION_XML_UTF_8:Lcom/google/common/net/MediaType;

    .line 65
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_78

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_79

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ATOM_UTF_8:Lcom/google/common/net/MediaType;

    .line 66
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_7a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_7b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->BZIP2:Lcom/google/common/net/MediaType;

    .line 67
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_7c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_7d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->DART_UTF_8:Lcom/google/common/net/MediaType;

    .line 68
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_7e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_7f

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLE_PASSBOOK:Lcom/google/common/net/MediaType;

    .line 70
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_80

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_81

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->EOT:Lcom/google/common/net/MediaType;

    .line 71
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_82

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_83

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->EPUB:Lcom/google/common/net/MediaType;

    .line 72
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_84

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_85

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FORM_DATA:Lcom/google/common/net/MediaType;

    .line 74
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_86

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_87

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->KEY_ARCHIVE:Lcom/google/common/net/MediaType;

    .line 75
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_88

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_89

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLICATION_BINARY:Lcom/google/common/net/MediaType;

    .line 76
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_8a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_8b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->GEO_JSON:Lcom/google/common/net/MediaType;

    .line 77
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_8c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_8d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->GZIP:Lcom/google/common/net/MediaType;

    .line 78
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_8e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_8f

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->HAL_JSON:Lcom/google/common/net/MediaType;

    .line 79
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_90

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_91

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JAVASCRIPT_UTF_8:Lcom/google/common/net/MediaType;

    .line 81
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_92

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_93

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JOSE:Lcom/google/common/net/MediaType;

    .line 82
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_94

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_95

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JOSE_JSON:Lcom/google/common/net/MediaType;

    .line 83
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_96

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_97

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->JSON_UTF_8:Lcom/google/common/net/MediaType;

    .line 84
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_98

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_99

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MANIFEST_JSON_UTF_8:Lcom/google/common/net/MediaType;

    .line 86
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_9a

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_9b

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->KML:Lcom/google/common/net/MediaType;

    .line 87
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_9c

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_9d

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->KMZ:Lcom/google/common/net/MediaType;

    .line 88
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_9e

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_9f

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MBOX:Lcom/google/common/net/MediaType;

    .line 89
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_a0

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_a1

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->APPLE_MOBILE_CONFIG:Lcom/google/common/net/MediaType;

    .line 91
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_a2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_a3

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MICROSOFT_EXCEL:Lcom/google/common/net/MediaType;

    .line 92
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_a4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_a5

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MICROSOFT_OUTLOOK:Lcom/google/common/net/MediaType;

    .line 94
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_a6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v4, [J

    fill-array-data v5, :array_a7

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MICROSOFT_POWERPOINT:Lcom/google/common/net/MediaType;

    .line 96
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_a8

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_a9

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MICROSOFT_WORD:Lcom/google/common/net/MediaType;

    .line 97
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_aa

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_ab

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->MEDIA_PRESENTATION_DESCRIPTION:Lcom/google/common/net/MediaType;

    .line 99
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_ac

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_ad

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WASM_APPLICATION:Lcom/google/common/net/MediaType;

    .line 100
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_ae

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_af

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->NACL_APPLICATION:Lcom/google/common/net/MediaType;

    .line 101
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_b0

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_b1

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->NACL_PORTABLE_APPLICATION:Lcom/google/common/net/MediaType;

    .line 103
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_b2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_b3

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OCTET_STREAM:Lcom/google/common/net/MediaType;

    .line 104
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_b4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_b5

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OGG_CONTAINER:Lcom/google/common/net/MediaType;

    .line 105
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_b6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v5, 0x9

    new-array v6, v5, [J

    fill-array-data v6, :array_b7

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OOXML_DOCUMENT:Lcom/google/common/net/MediaType;

    .line 107
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_b8

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v5, [J

    fill-array-data v5, :array_b9

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OOXML_PRESENTATION:Lcom/google/common/net/MediaType;

    .line 109
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_ba

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v5, 0x8

    new-array v5, v5, [J

    fill-array-data v5, :array_bb

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OOXML_SHEET:Lcom/google/common/net/MediaType;

    .line 111
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_bc

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v5, 0x5

    new-array v6, v5, [J

    fill-array-data v6, :array_bd

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENDOCUMENT_GRAPHICS:Lcom/google/common/net/MediaType;

    .line 113
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_be

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v6, 0x6

    new-array v7, v6, [J

    fill-array-data v7, :array_bf

    invoke-direct {v3, v7}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENDOCUMENT_PRESENTATION:Lcom/google/common/net/MediaType;

    .line 115
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_c0

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v6, [J

    fill-array-data v6, :array_c1

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENDOCUMENT_SPREADSHEET:Lcom/google/common/net/MediaType;

    .line 117
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_c2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v6, v5, [J

    fill-array-data v6, :array_c3

    invoke-direct {v3, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENDOCUMENT_TEXT:Lcom/google/common/net/MediaType;

    .line 119
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_c4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v5, [J

    fill-array-data v5, :array_c5

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->OPENSEARCH_DESCRIPTION_UTF_8:Lcom/google/common/net/MediaType;

    .line 121
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_c6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_c7

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PDF:Lcom/google/common/net/MediaType;

    .line 122
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_c8

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_c9

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->POSTSCRIPT:Lcom/google/common/net/MediaType;

    .line 123
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_ca

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_cb

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PROTOBUF:Lcom/google/common/net/MediaType;

    .line 124
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_cc

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_cd

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->RDF_XML_UTF_8:Lcom/google/common/net/MediaType;

    .line 125
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_ce

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v1, [J

    fill-array-data v5, :array_cf

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->RTF_UTF_8:Lcom/google/common/net/MediaType;

    .line 126
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_d0

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v5, v2, [J

    fill-array-data v5, :array_d1

    invoke-direct {v3, v5}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SFNT:Lcom/google/common/net/MediaType;

    .line 127
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_d2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v4, [J

    fill-array-data v4, :array_d3

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SHOCKWAVE_FLASH:Lcom/google/common/net/MediaType;

    .line 129
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_d4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_d5

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SKETCHUP:Lcom/google/common/net/MediaType;

    .line 130
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_d6

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_d7

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->SOAP_XML_UTF_8:Lcom/google/common/net/MediaType;

    .line 131
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_d8

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_d9

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->TAR:Lcom/google/common/net/MediaType;

    .line 132
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_da

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_db

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WOFF:Lcom/google/common/net/MediaType;

    .line 133
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_dc

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_dd

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->WOFF2:Lcom/google/common/net/MediaType;

    .line 134
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_de

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v2, [J

    fill-array-data v4, :array_df

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->XHTML_UTF_8:Lcom/google/common/net/MediaType;

    .line 135
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_e0

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_e1

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->XRD_UTF_8:Lcom/google/common/net/MediaType;

    .line 136
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v2, [J

    fill-array-data v3, :array_e2

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v4, v1, [J

    fill-array-data v4, :array_e3

    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->ZIP:Lcom/google/common/net/MediaType;

    .line 137
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_e4

    invoke-direct {v0, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v2, [J

    fill-array-data v2, :array_e5

    invoke-direct {v3, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FONT_COLLECTION:Lcom/google/common/net/MediaType;

    .line 138
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_e6

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_e7

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FONT_OTF:Lcom/google/common/net/MediaType;

    .line 139
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_e8

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_e9

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FONT_SFNT:Lcom/google/common/net/MediaType;

    .line 140
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_ea

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_eb

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FONT_TTF:Lcom/google/common/net/MediaType;

    .line 141
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_ec

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_ed

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FONT_WOFF:Lcom/google/common/net/MediaType;

    .line 142
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_ee

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v3, v1, [J

    fill-array-data v3, :array_ef

    invoke-direct {v2, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/net/MediaType;->createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->FONT_WOFF2:Lcom/google/common/net/MediaType;

    .line 143
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v2, v1, [J

    fill-array-data v2, :array_f0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_f1

    invoke-direct {v2, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->withKeyValueSeparator(Ljava/lang/String;)Lcom/google/common/base/Joiner$MapJoiner;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/MediaType;->PARAMETER_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    return-void

    :array_0
    .array-data 8
        0x6069a4527444866fL    # 2.7504115539833044E156
        -0xca0b745205b1822L
    .end array-data

    :array_1
    .array-data 8
        -0x480dd36efa221b1bL    # -3.338052754274001E-39
        0x2236c2ed07768800L
        0x67415534b78db63fL    # 2.413331096726301E189
    .end array-data

    :array_2
    .array-data 8
        0x8bafc4fe72dc743L
        0x7a34951efd10ed91L    # 4.670186098011344E280
    .end array-data

    :array_3
    .array-data 8
        0x5d6aa7d1cc7e7234L    # 1.0157703740462435E142
        0x1f7e89d9d33d4c11L    # 5.560702862270786E-157
    .end array-data

    :array_4
    .array-data 8
        -0x2ac4eb05f23801ecL    # -3.791039617794302E102
        0x4df61ee1fe94445bL    # 3.7273197759479405E67
    .end array-data

    :array_5
    .array-data 8
        -0x5475fcdaffafe94cL    # -5.946342376094762E-99
        -0x3f9c33701559a0fdL    # -158.39256794447292
    .end array-data

    :array_6
    .array-data 8
        0x56b15a726dcf6f53L    # 4.075498407501039E109
        -0x4c1a8368e87a10c5L    # -1.0696955271426165E-58
    .end array-data

    :array_7
    .array-data 8
        -0x680a67d9dc3bf6eeL    # -2.958166168013095E-193
        -0x54528351c479e127L    # -2.6962646068043768E-98
    .end array-data

    :array_8
    .array-data 8
        0x72e208d459b26befL    # 2.462806855833347E245
        -0x71cb5cb03f31d3a2L    # -3.095064639432381E-240
    .end array-data

    :array_9
    .array-data 8
        0x110c64b2b3e1862aL    # 1.498200497540125E-226
        -0x748c151b6d970ddbL
        -0x375a1a9d80c9e836L    # -9.537067957271415E41
    .end array-data

    :array_a
    .array-data 8
        -0x7eba9293be4b2f3eL
        -0xeb4bafb8cc14cc3L    # -5.549135764759728E237
    .end array-data

    :array_b
    .array-data 8
        -0x3ffb7db5a26db7c5L    # -2.5636184034601945
        0x67a418d886db4712L    # 1.7908518588769053E191
    .end array-data

    :array_c
    .array-data 8
        -0x52b5c48ca9b0deceL    # -1.609705778390856E-90
        -0x4d097f9144516b12L    # -3.418661095983986E-63
    .end array-data

    :array_d
    .array-data 8
        0x6cd5d6887e175a1eL    # 1.882045712470461E216
        -0x353d57d89170840L    # -3.513434024829399E292
    .end array-data

    :array_e
    .array-data 8
        -0x1a0fffa83dfc29e5L    # -1.062364890089629E183
        -0xc35c7d7141374e7L    # -5.866360504978852E249
    .end array-data

    :array_f
    .array-data 8
        -0x660fbbd77afcce3bL    # -9.57039619394609E-184
        -0x43afe04178fa592dL    # -3.496335375703478E-18
    .end array-data

    :array_10
    .array-data 8
        -0x341c40a6ef58fabaL    # -3.873649065065336E57
        0x48a7ba6ec48ef924L    # 1.033511166173671E42
    .end array-data

    :array_11
    .array-data 8
        0x5d536834bb9232f1L    # 3.697750529748124E141
        0x728f71d46f07942bL    # 6.709547677062622E243
    .end array-data

    :array_12
    .array-data 8
        -0x6a9b71d3c71f1120L    # -1.280495644404995E-205
        -0x263715592b094acdL    # -3.294254508258149E124
    .end array-data

    :array_13
    .array-data 8
        -0x53ad3d0ac313ccf4L    # -3.513421049674975E-95
        -0x57af3283c4a678efL
    .end array-data

    :array_14
    .array-data 8
        -0x386a2d45c4e7d283L    # -7.251986865476512E36
        0x6161ea0539e0b2f5L    # 1.2592840884017486E161
    .end array-data

    :array_15
    .array-data 8
        -0x413a3f15a4232e5cL    # -2.5932283439727674E-6
        0x765c2f2232056a8L
    .end array-data

    :array_16
    .array-data 8
        -0x19783d093af2c080L    # -8.077233149342279E185
        0x490056197fea4352L    # 4.553903210676409E43
        0x7f527218740dd236L
    .end array-data

    :array_17
    .array-data 8
        -0x3b08437f09c65ccaL    # -1.7934673547218162E24
        -0x271626fe106b59aaL    # -2.085786983663749E120
    .end array-data

    :array_18
    .array-data 8
        0x6fe952f2b1065cd2L    # 1.2286247659534615E231
        0x1f854cce63e9539L
    .end array-data

    :array_19
    .array-data 8
        -0x1034459b5165bd7dL    # -3.363154299251111E230
        -0x506c15e5af2e775eL    # -1.6795377752226635E-79
    .end array-data

    :array_1a
    .array-data 8
        0x450291a3215a8b9dL    # 2.806052139468787E24
        0x230c40b20f0af538L
    .end array-data

    :array_1b
    .array-data 8
        -0x618e610fb69aa1ecL    # -4.895863420823972E-162
        0x716e138e8e023f5cL    # 2.4481180301570054E238
        -0x3543f82f72db05bcL    # -1.0487464865555836E52
    .end array-data

    :array_1c
    .array-data 8
        -0xb9648305e967fb6L    # -5.892285383447552E252
        0x6c1d23875f7bb7f6L    # 6.1309586333194306E212
    .end array-data

    :array_1d
    .array-data 8
        -0x25845bd7840c0897L    # -7.484378520732898E127
        0x68425f32effac575L    # 1.6764114088355445E194
    .end array-data

    :array_1e
    .array-data 8
        0x3554edf5a845013cL    # 8.740579427415858E-52
        -0x663257298c780fceL
    .end array-data

    :array_1f
    .array-data 8
        0x1d0eaf5852957648L
        0x72d3ff5ec7da70e8L
    .end array-data

    :array_20
    .array-data 8
        -0x1349164aeabbf613L    # -4.936706855984694E215
        0x442e481a2d00e0a7L    # 2.7929891840660206E20
    .end array-data

    :array_21
    .array-data 8
        0x253da7fc76352f23L
        0x46ddc77e5158d8f6L    # 2.4159815052001456E33
    .end array-data

    :array_22
    .array-data 8
        -0x5ee4be445c14f9d1L    # -3.330707841353642E-149
        -0x6489b75298a13161L
    .end array-data

    :array_23
    .array-data 8
        0x29fd5ec76272e8efL    # 2.0009161482501627E-106
        -0x4aaf7bd87a568cfL
    .end array-data

    :array_24
    .array-data 8
        0x11745d818192f087L    # 1.375476408569784E-224
        -0x6e2a0303426c5102L
    .end array-data

    :array_25
    .array-data 8
        0x632248c2c1f12929L    # 3.450198295396404E169
        0x784912f9bfec6770L    # 2.6493044507242818E271
    .end array-data

    :array_26
    .array-data 8
        0x43c2f63d28e6fc2L
        0x6c3b7cfb12424aedL    # 2.3134671917306687E213
    .end array-data

    :array_27
    .array-data 8
        -0x8e5cb18d604e6ddL
        0x6ddfa70d9a371354L    # 1.7877449343485315E221
        -0x3ef40936dd9c6c0eL    # -229081.1417914923
    .end array-data

    :array_28
    .array-data 8
        -0x90db7a1a1ce1022L    # -9.211201772772495E264
        -0x509660297e610addL    # -2.7013714757506605E-80
    .end array-data

    :array_29
    .array-data 8
        -0xbd5eadb6c574853L    # -3.734883854214603E251
        -0x63b6be05a19a06f0L
        0x181418d6e06d5dd6L
        0x4825bd040f1dcc83L    # 3.6985874361637725E39
    .end array-data

    :array_2a
    .array-data 8
        0x6e2be1b41bbbd82bL    # 5.039243613297988E222
        -0x64367b604ca7e52fL    # -8.060467169251315E-175
    .end array-data

    :array_2b
    .array-data 8
        0x61a16a3d1af74554L    # 1.9587140189483163E162
        0x2b7f3a90be120232L    # 3.569409160648299E-99
    .end array-data

    :array_2c
    .array-data 8
        -0x47b698025a640d6eL
        0x2b10ba532316f03L
    .end array-data

    :array_2d
    .array-data 8
        0x686205c34e63f7d1L    # 6.578131038434951E194
        -0x58d2e6a1a86ddd85L
        -0x5bf76f9f67e507a2L    # -4.224453975973298E-135
    .end array-data

    :array_2e
    .array-data 8
        0x78cf4829eb9edbdfL    # 8.461338228748734E273
        -0x1dd5ed5e576dbbaL    # -3.898773785330969E299
    .end array-data

    :array_2f
    .array-data 8
        -0x54462278ba59c13dL    # -4.7302021747903435E-98
        -0xb91fe0dfe9d5911L    # -6.875077947408183E252
    .end array-data

    :array_30
    .array-data 8
        0x57ff7c81e36aae50L    # 7.753910195048233E115
        0x6735554f24d36c87L    # 1.4851628969438566E189
    .end array-data

    :array_31
    .array-data 8
        -0x6aa36e980335565dL    # -8.898211103805685E-206
        0x55032beaa964ae34L
    .end array-data

    :array_32
    .array-data 8
        0x4ad38ea9ab934f00L    # 2.9268983368714346E52
        0x6bc706b86528261L
    .end array-data

    :array_33
    .array-data 8
        -0xc20ae7f9fdce773L
        0x2086540bf2b56610L    # 5.329027964578723E-152
    .end array-data

    :array_34
    .array-data 8
        -0x4a58bd27e91471c3L    # -3.1085736648180884E-50
        -0x6901a30451b9d5ddL
    .end array-data

    :array_35
    .array-data 8
        -0x42ad38bc3ffdc43fL    # -2.668567949154833E-13
        -0x7e0d9fdfeb47bc9L    # -4.113891336929568E270
        0x3c07b99fdd2f4117L    # 1.607675010715229E-19
    .end array-data

    :array_36
    .array-data 8
        -0x513364d08b68210bL    # -2.945040503511705E-83
        -0x7a06b8f464f7fb79L    # -6.962713386724751E-280
    .end array-data

    :array_37
    .array-data 8
        0x6241a463cb04ce9aL    # 2.0318848447304345E165
        0x984de5b6ad1c3c7L
    .end array-data

    :array_38
    .array-data 8
        -0x754c7d685325075dL
        -0x267b53ae4e57c43L    # -9.929337385272134E296
    .end array-data

    :array_39
    .array-data 8
        0x2a8bb2ea697ab71cL    # 9.66170693126596E-104
        -0x32f6dccad51b2febL    # -1.292622506618937E63
        0x48a2fd2e20df800aL    # 8.270869503885545E41
        -0x1e797e83fc6e0068L    # -6.328227972858127E161
    .end array-data

    :array_3a
    .array-data 8
        0x6d809935e3d52998L    # 2.9296459441494385E219
        0x33f72e2a2f955f8aL    # 2.308024883787155E-58
    .end array-data

    :array_3b
    .array-data 8
        0x776279dc1d2a5645L    # 1.1915011768147023E267
        -0x3fae0d444f0f5d19L    # -71.79270575999873
    .end array-data

    :array_3c
    .array-data 8
        -0x7bf0eae0744f28e9L    # -3.986853651190751E-289
        0x402e954eb69eebc5L    # 15.291616160296948
    .end array-data

    :array_3d
    .array-data 8
        0x4bd19487d03f6d9fL    # 1.724260738878276E57
        -0x1132c11a6fbf1ea7L    # -5.412633825191921E225
    .end array-data

    :array_3e
    .array-data 8
        -0x6dad8377ddb44289L    # -2.045675555898418E-220
        0x6c3d7776090d5d48L    # 2.4799769016144596E213
    .end array-data

    :array_3f
    .array-data 8
        0x7390a717793a32e0L    # 4.657374321240343E248
        0x70b4d50bfe7cc60eL    # 8.27965172469238E234
        -0x18f16bff1968b4c0L    # -2.660960049023717E188
        0x79d9396c4b2bd251L    # 8.942836168165458E278
    .end array-data

    :array_40
    .array-data 8
        0x26f2cd69b0a717d7L    # 4.550874924937412E-121
        0x2487549e32db5becL
    .end array-data

    :array_41
    .array-data 8
        0x767b315a793d42d2L    # 5.3516777364825495E262
        -0x4fcec2dda4c624b6L    # -1.488772298683601E-76
    .end array-data

    :array_42
    .array-data 8
        0x485a1723f5f8499L
        0x4c5155d2ff4b976L
    .end array-data

    :array_43
    .array-data 8
        -0x3d8c5e9040053665L    # -1.3490053446846003E12
        -0x4a12fae96e1aeedL
    .end array-data

    :array_44
    .array-data 8
        0x5f8fc2c71eba5311L    # 2.0793134161499164E152
        -0xd895ddd41da8bc4L
    .end array-data

    :array_45
    .array-data 8
        0x31a542c9ac09b247L    # 1.540254357561603E-69
        -0x7081080664985bd0L    # -4.86996332111691E-234
    .end array-data

    :array_46
    .array-data 8
        0x5697f2df3bfbd541L    # 1.4061146467520218E109
        0x60a5b70c8c48fe58L
    .end array-data

    :array_47
    .array-data 8
        -0x492c3045b2793ae3L    # -1.3880867775754313E-44
        0x34c6eb46be275f70L    # 1.869422095213274E-54
    .end array-data

    :array_48
    .array-data 8
        -0x25e933c00c2e66aeL    # -9.645219437452073E125
        -0x41508c0fb3d71e6aL    # -9.37369030679655E-7
    .end array-data

    :array_49
    .array-data 8
        -0x3800524abbcb8741L    # -6.737281879320228E38
        0x52d71283c4d1b391L    # 1.1749788069732338E91
    .end array-data

    :array_4a
    .array-data 8
        0x1397eb3240d24371L
        -0x72aad943b7cf024dL
    .end array-data

    :array_4b
    .array-data 8
        -0x480783514abce033L    # -4.497559088746343E-39
        -0x27702c4cf98d348aL    # -4.012946237256347E118
    .end array-data

    :array_4c
    .array-data 8
        0x56af78c026a2bb4cL    # 3.6956292652944758E109
        -0x7f966e5adbf16ccL
    .end array-data

    :array_4d
    .array-data 8
        0x77302aebc4f10becL    # 1.3032968731417977E266
        -0x22162cf432dcb58aL    # -2.5192899872228616E144
    .end array-data

    :array_4e
    .array-data 8
        -0x24f7d9dc87038c34L
        0x5cd829850e40d252L    # 1.7983501133108302E139
    .end array-data

    :array_4f
    .array-data 8
        -0x5bf6bef8d17d0d43L
        -0x2a252aaf1e5b14b5L    # -3.846378566455291E105
    .end array-data

    :array_50
    .array-data 8
        -0x46c857778c6940abL    # -4.5564290196653385E-33
        -0x2d90674f585bdd47L    # -1.2570917243627287E89
    .end array-data

    :array_51
    .array-data 8
        -0x4b6063d2e8afd371L    # -3.2228950868208296E-55
        -0x34fd77feee1235c2L    # -2.2186783604210156E53
    .end array-data

    :array_52
    .array-data 8
        0xa749149ac7d2b9cL
        -0x5ece60d64f3478f9L    # -8.613322152583422E-149
    .end array-data

    :array_53
    .array-data 8
        -0xffd343bf412126bL    # -3.647633530920582E231
        0x6816bad268d7e87fL    # 2.5925809999327047E193
    .end array-data

    :array_54
    .array-data 8
        0x68f0a50b464e6080L    # 3.1105216653735725E197
        -0x52301577533f4e63L    # -5.01373931346779E-88
    .end array-data

    :array_55
    .array-data 8
        0x36bcaf2dc62c311bL    # 5.0244068275796814E-45
        -0x23c33f8896f1ca64L    # -2.089793766558898E136
    .end array-data

    :array_56
    .array-data 8
        -0x7242d01c769a4896L
        -0x4c499727d5e6add5L    # -1.3945496211126065E-59
    .end array-data

    :array_57
    .array-data 8
        -0xb706c916bfab250L
        0x37c1ebc29e3424feL    # 4.114445670451416E-40
    .end array-data

    :array_58
    .array-data 8
        0x1fe4c6e94955eb7fL    # 4.842560133048435E-155
        -0x23ab7b8f369612c9L    # -5.965120633996712E136
    .end array-data

    :array_59
    .array-data 8
        0xd7ec28e145b17f2L
        -0x7523cc060adcce2fL
    .end array-data

    :array_5a
    .array-data 8
        -0x5ffb0f34a59a514L    # -4.625595672772008E279
        -0x7bb5868aca646f0dL
    .end array-data

    :array_5b
    .array-data 8
        -0x1938bc314fc950c7L    # -1.2653422301818545E187
        -0x71534ed4c97db29bL    # -5.507763123811148E-238
    .end array-data

    :array_5c
    .array-data 8
        -0x710d1239717bf235L
        0x6db8b105a32dcbcaL    # 3.4864559416141197E220
    .end array-data

    :array_5d
    .array-data 8
        -0x26534172db094f1L    # -1.095302705455134E297
        0x6af9d22d969a3ef0L    # 2.072479428670096E207
    .end array-data

    :array_5e
    .array-data 8
        0x59c2d573d7d8cacaL    # 2.490039032423621E124
        -0x766438d84847046dL
    .end array-data

    :array_5f
    .array-data 8
        0x7af25dc96b45151L
        -0xec0fd67cc5f4cbfL    # -3.1551517817185135E237
    .end array-data

    :array_60
    .array-data 8
        0x43e925432766fe84L    # 1.4495426092777873E19
        -0x131fa9699b12f4b6L    # -2.816125254631119E216
    .end array-data

    :array_61
    .array-data 8
        -0x772364772eaf5424L    # -5.545038997963526E-266
        0x3ab39057b07297a4L    # 6.321417002729809E-26
        0x325631a09b0f60e3L    # 3.2928636206232015E-66
    .end array-data

    :array_62
    .array-data 8
        0x368f53aad179a724L    # 6.859098763553279E-46
        -0x3d3c710f93216cdL
    .end array-data

    :array_63
    .array-data 8
        0x7d5b4a6370052ff2L    # 6.971857821378123E295
        -0x41dedbca08194a19L    # -1.995527242762509E-9
    .end array-data

    :array_64
    .array-data 8
        -0x3a3eb5e0104ba67L
        -0x778c5bded9ec234fL    # -5.948539582241861E-268
    .end array-data

    :array_65
    .array-data 8
        -0x5c40cec70816f10eL
        0x662d1b1658a3da3dL    # 1.5459201357555733E184
    .end array-data

    :array_66
    .array-data 8
        -0x53671d3adc6e9ff1L    # -7.456470904124613E-94
        0x1a1593e95a7aa9dfL    # 5.07819524602182E-183
    .end array-data

    :array_67
    .array-data 8
        0x3d24bf66f1cdea3cL    # 3.68552558412231E-14
        -0xdb2a53165694a06L
    .end array-data

    :array_68
    .array-data 8
        -0x2884aa1eef79691dL    # -2.629570750822068E113
        -0x119f94c9af6ce5f3L    # -4.74797193237541E223
    .end array-data

    :array_69
    .array-data 8
        0x2534c92d0d086e94L
        -0x78eb4115bdf04334L    # -1.4980053149992264E-274
    .end array-data

    :array_6a
    .array-data 8
        0x66f469a5d6f5f1f6L    # 8.881728286899455E187
        0x700b2aa708f2def2L    # 5.272081934240423E231
    .end array-data

    :array_6b
    .array-data 8
        -0x52130c62d3b6cb29L    # -1.8192152821809457E-87
        -0x2fcb50f03386e8a3L    # -2.395024447175236E78
        0x6d106625aa9ec797L    # 2.261281225037901E217
    .end array-data

    :array_6c
    .array-data 8
        -0x7c8991b9f41b2b5cL    # -5.619376514495145E-292
        0x61cd3106d629cc90L
    .end array-data

    :array_6d
    .array-data 8
        0x3f275f68adc6a822L    # 1.7831948106322807E-4
        0x5985be31b5130440L    # 1.7966630268609381E123
    .end array-data

    :array_6e
    .array-data 8
        -0x2c581ac3cca3012eL    # -9.96882247524322E94
        -0xb4223d942001377L
    .end array-data

    :array_6f
    .array-data 8
        0x2bc79ff3444659faL    # 8.640913613625792E-98
        0x6618a325fe63992aL    # 6.54290263366255E183
    .end array-data

    :array_70
    .array-data 8
        -0x6dce69494c9e63d2L    # -4.865837008936967E-221
        0x709490b7ffe0966dL    # 2.0433927768357387E234
    .end array-data

    :array_71
    .array-data 8
        -0x7f6d7d64b17c8abcL    # -6.589843637487642E-306
        -0x24720a0a29c7e398L    # -1.06331332394257E133
    .end array-data

    :array_72
    .array-data 8
        0x47fede84d45ab4b2L    # 6.5651558205843906E38
        0x46de25c7a0789ea4L    # 2.4458620465490954E33
    .end array-data

    :array_73
    .array-data 8
        0x45353c9ade586badL    # 2.5673641021140808E25
        -0x578b4ec5cd508b0aL
    .end array-data

    :array_74
    .array-data 8
        -0x7f487a944657f8fbL    # -3.349526504200823E-305
        0x56c9d6d832872e4aL    # 1.213690940311664E110
    .end array-data

    :array_75
    .array-data 8
        -0x708712ea1251b2c1L    # -3.919746592954784E-234
        -0x176b3b2bc813833cL    # -6.064429121919901E195
    .end array-data

    :array_76
    .array-data 8
        0x43bd576443d6bdaaL    # 2.1142687926020777E18
        0x3479eea817c8df32L    # 6.609993844273032E-56
        0x133ead9b7804bc8eL    # 5.562017337675955E-216
    .end array-data

    :array_77
    .array-data 8
        -0x75fc8ca2a1ac3e5eL
        -0x23dc3c055cb2c145L    # -7.183181095274013E135
    .end array-data

    :array_78
    .array-data 8
        0x37cc2230a212133eL    # 6.459147359322986E-40
        -0x36e4f7ec1d02a6ecL    # -1.5070594643343432E44
        -0x4f773b5d4aa48d97L    # -6.844849701688528E-75
    .end array-data

    :array_79
    .array-data 8
        0x7e8394dc43813e90L    # 2.6227163430792017E301
        -0x17eba027509b380cL
    .end array-data

    :array_7a
    .array-data 8
        0x1911ce51129d0393L    # 6.394215127979631E-188
        -0x4daf37de68be36c0L    # -2.489880675632819E-66
        -0x2ccc6927d5cf75c1L    # -6.38463652863326E92
    .end array-data

    :array_7b
    .array-data 8
        0x20af8c7012f3e18cL
        -0x1faca4236f4a7912L    # -1.0382381286467405E156
    .end array-data

    :array_7c
    .array-data 8
        -0x362c3547e155246cL    # -4.5196645708778985E47
        0x59876a48ddd1f0a8L
        0x85e4e2446cec053L
    .end array-data

    :array_7d
    .array-data 8
        0x166533cf72dc13eL
        -0x725c74e9ea44c58cL    # -5.724420576023578E-243
    .end array-data

    :array_7e
    .array-data 8
        0x73b0a4749abb0826L    # 1.861797719002319E249
        -0x3b524c3c75c8ac34L    # -7.013234266381547E22
        0x35f5a6d924bb1f84L    # 9.259205691903859E-49
    .end array-data

    :array_7f
    .array-data 8
        -0x44cf340100fa145dL    # -1.3894036681538585E-23
        0x704c40e86c0af2f8L    # 8.772828416034415E232
        -0x3945c23e6881805dL    # -5.322354813603805E32
    .end array-data

    :array_80
    .array-data 8
        0x4c6f1ff3e39de4c6L    # 1.5629890521826277E60
        -0x37fedb1eac8e25dL    # -5.011899284126603E291
        0x31b6a4ed9e6c05ceL    # 3.2809450880823315E-69
    .end array-data

    :array_81
    .array-data 8
        0x7b785f8c6515f8f4L    # 5.798946248756258E286
        0x3199cef7e0411b9bL    # 9.348528796447065E-70
        0x4e7a77b5d9e8ac99L    # 1.1417049364828304E70
        0x3b9092cbed146239L    # 8.773897697979624E-22
    .end array-data

    :array_82
    .array-data 8
        -0x66a896748a365933L
        0x365c9055dac869aL
        -0x9457ea090178f30L    # -8.346222673215429E263
    .end array-data

    :array_83
    .array-data 8
        0x34d2d5b415c5f768L    # 3.0725667102397304E-54
        -0x7b67e9b6f290e70bL
    .end array-data

    :array_84
    .array-data 8
        0x12a46e0ccb663160L    # 7.23434197837693E-219
        0xc940c27fcc7ef07L
        -0x6884245ff405f991L
    .end array-data

    :array_85
    .array-data 8
        -0x783ce7ede4ada2aL
        -0x34b72bfef9e76144L    # -4.756126848929367E54
        0x5d59209fd4cf24f3L    # 4.787692001132819E141
        -0x179cd257d9fcb26L
    .end array-data

    :array_86
    .array-data 8
        -0x4b25e1c306b9ea4cL    # -4.2607167833031596E-54
        -0x47dbe87f216103adL    # -2.9522261652946625E-38
        0x6afcfe57e7c52181L    # 2.327116423143848E207
    .end array-data

    :array_87
    .array-data 8
        0x3016957f7ed0e2b4L    # 4.875975730247258E-77
        -0x530e063a0d459ed4L    # -3.447042071022332E-92
    .end array-data

    :array_88
    .array-data 8
        -0x23da838b99ef15e6L    # -7.808483328915633E135
        -0x9857aa11cc82b36L
        0x5a656fb448abd5fcL
    .end array-data

    :array_89
    .array-data 8
        -0xee5c5d687d5452dL    # -6.671269096884677E236
        0x75d905826103730bL    # 4.8089468812821994E259
    .end array-data

    :array_8a
    .array-data 8
        0x742341c5dd7792c2L    # 2.757486186048842E251
        -0x60771bce18d36082L    # -9.064865307061733E-157
        -0x58b2579d077858efL
    .end array-data

    :array_8b
    .array-data 8
        0x369250dc292e4c78L    # 8.020620510444818E-46
        -0x5b53e898db1bc313L
    .end array-data

    :array_8c
    .array-data 8
        0x437a966a133feb7aL    # 1.19739707650127776E17
        -0xe7ddf4585d0dd80L    # -5.902184320358869E238
        -0x5225118e5aeef10fL    # -8.46136740472922E-88
    .end array-data

    :array_8d
    .array-data 8
        -0x63700eaefb4c5795L    # -4.132789797215258E-171
        0x78f5cc5c2f8875e9L    # 4.71691795640713E274
    .end array-data

    :array_8e
    .array-data 8
        0x766802c2e63daf2fL    # 2.3627220016806294E262
        0xcfe9eadac1c9fc0L
        0x6b7652f17b4b465bL    # 4.5870023135754686E209
    .end array-data

    :array_8f
    .array-data 8
        0x7dd821dcbf21c5f0L    # 1.578243403265789E298
        0x19139e7947bf12fdL    # 7.045315150476445E-188
    .end array-data

    :array_90
    .array-data 8
        -0x6ec7e5381432c8b1L    # -1.017521102610198E-225
        0x30fe2bcb51867599L    # 1.0672638192954795E-72
        0x58e0ea97e7c281eL
    .end array-data

    :array_91
    .array-data 8
        0x6166f46e8031f03L
        0x8d530dd41603cf3L
        -0x52ec24c30bc2a3a4L    # -1.5230768400944958E-91
    .end array-data

    :array_92
    .array-data 8
        0x51d58e37e9c10922L    # 1.6750111322953016E86
        0x7d3f810b892e3a9fL    # 2.012067754109105E295
        -0x6536d0e8cd2194a3L
    .end array-data

    :array_93
    .array-data 8
        -0x5aa6e3e26a9a22c1L    # -9.056191028788977E-129
        -0x693cbfaf001a421eL    # -5.030040615545498E-199
    .end array-data

    :array_94
    .array-data 8
        -0x1d60a998b469f219L    # -1.1549472562722808E167
        0x2deb87456f0c7ceaL
        0x517035f07fe6cf67L    # 1.9682515325413594E84
    .end array-data

    :array_95
    .array-data 8
        -0x66701deeee245cf7L    # -1.465523736878615E-185
        0x2a6ff924b1957f65L    # 2.788160928314632E-104
        -0x44374e958cf2ddf2L
    .end array-data

    :array_96
    .array-data 8
        0x4fd49193a1b8b645L    # 3.721387485110011E76
        0x371fe8a0b09e3785L    # 3.5770892014415345E-43
        0x23c591d92981ff95L
    .end array-data

    :array_97
    .array-data 8
        0x39ae19b1bf574d2L
        0x743ecfcf11d8cc6cL    # 8.824148446981244E251
    .end array-data

    :array_98
    .array-data 8
        0x492c0dccfa2b5f12L    # 3.128115377055091E44
        0x24475facdd132296L    # 6.43161423779461E-134
        -0x2cfbe8104cd7d25L    # -1.038210188201984E295
    .end array-data

    :array_99
    .array-data 8
        0x71ee00238d2e5a9aL    # 6.251376568811043E240
        0x33b96005986d7262L
        0x47a8623f6796f96cL    # 1.6205801495002224E37
    .end array-data

    :array_9a
    .array-data 8
        0x1458eafd9a6bc60aL
        0x6195a6f07e66f91fL    # 1.2176370438622417E162
        0x3a038bad5c97f711L    # 3.0837541568628213E-29
    .end array-data

    :array_9b
    .array-data 8
        -0x6d96e163f8f1c4ecL    # -5.559367061151588E-220
        0x4abcdd79f4ad9e37L    # 1.0799731842627403E52
        0x440c7c9e40620ebdL    # 6.568606494509863E19
        0x257b52add963ef22L    # 3.941755526944912E-128
    .end array-data

    :array_9c
    .array-data 8
        -0x4d3c8694420e0af2L    # -3.698390748789868E-64
        -0x5c079086ebc0b163L
        0x3ed18391e3564381L    # 4.175649839580835E-6
    .end array-data

    :array_9d
    .array-data 8
        -0x6c41a9195ab3d916L
        -0x19270e4646723eccL    # -2.713361134519657E187
        0x2acd72c2156c4c7bL    # 1.643506145334058E-102
        0x2d23bfaea4b21ef4L    # 3.0296406803445417E-91
    .end array-data

    :array_9e
    .array-data 8
        0xb5fecfa7b65d333L
        0x4d4c1b6f783c80abL    # 2.3125237869845E64
        -0x5e481926a2dfaa42L
    .end array-data

    :array_9f
    .array-data 8
        0x3021848e9357a986L    # 7.564333904727E-77
        0x3eb8d9323754992dL    # 1.4810813955906435E-6
    .end array-data

    :array_a0
    .array-data 8
        0x61a7529e78291bbdL    # 2.623173855035264E162
        0x1dad237c0d21552cL    # 9.882828358716074E-166
        0x42034ebdbd0b20b3L    # 1.0365679521390966E10
    .end array-data

    :array_a1
    .array-data 8
        -0x1d51a3948c0bdf49L    # -2.2379165680989738E167
        -0x6eb4c0a4255ab65dL
        -0x583ab7055f122b33L
        -0x2d9f973f3b441bf3L    # -6.528537744605898E88
    .end array-data

    :array_a2
    .array-data 8
        0xdc9d8952b052e36L
        -0x402dc0f909b43e9bL    # -0.2850968747361747
        -0x547dcd740465d6dfL    # -4.159890830564051E-99
    .end array-data

    :array_a3
    .array-data 8
        0xe584ad5fab1af48L
        -0x2ea34319e68f04a6L    # -8.723155817838804E83
        -0x57b95d4acd13ddf1L
    .end array-data

    :array_a4
    .array-data 8
        0x2cf0fb5596a868d3L    # 3.2564499742720845E-92
        -0x75502401b55b8a82L    # -3.315359381840157E-257
        -0x45603c83e97a1b65L    # -2.5658441583855996E-26
    .end array-data

    :array_a5
    .array-data 8
        -0x4945cbede36a1de8L    # -4.589848261087533E-45
        -0x465f95f684279055L    # -4.046414487140279E-31
        -0x75299c4a83aee61cL
    .end array-data

    :array_a6
    .array-data 8
        -0x1ef89ff7be505081L    # -2.567448162730427E159
        -0x303ca772ad641a00L    # -1.750080407630221E76
        -0x6d83687a25d67ce5L
    .end array-data

    :array_a7
    .array-data 8
        -0x848691f79093800L    # -4.868020209769902E268
        0x5179283b96bca7edL    # 3.05450191861964E84
        -0x7dd163120bd222e9L
        -0x5ec55840691720b7L
    .end array-data

    :array_a8
    .array-data 8
        -0xe11ab3661b9d643L    # -6.320277782447832E240
        0x1daf90466ac9843aL
        -0x59d27db27d3c196dL    # -8.718589501042819E-125
    .end array-data

    :array_a9
    .array-data 8
        0x1cc778fdf5db841L    # 5.313450378200077E-300
        0x19516fddc1510776L
    .end array-data

    :array_aa
    .array-data 8
        0x4676f5f48aceee2dL    # 2.9106224577980756E31
        -0x4e801c70039a0decL    # -2.8877578766506143E-70
        0x21e712f6a88b97eL
    .end array-data

    :array_ab
    .array-data 8
        0x3d64cec5598c4376L    # 5.91390369746601E-13
        -0x44f590b4f0ba5a00L    # -2.733287957020006E-24
    .end array-data

    :array_ac
    .array-data 8
        -0x1928ff972aaefceL    # -9.857075546888032E300
        -0x7a0aa78df935d12eL    # -5.879632313472558E-280
        0x4dacaa20665ae9b6L    # 1.5093650874583622E66
    .end array-data

    :array_ad
    .array-data 8
        0x3e11345aa16ac2c0L    # 1.0014341627376041E-9
        -0x4beb5972dd921a0aL    # -8.22457238704102E-58
    .end array-data

    :array_ae
    .array-data 8
        -0x51131554a15e4c4eL    # -1.1908020974293947E-82
        -0x33313b31a298b77fL    # -9.888702663896273E61
        0x56173e6fe6387870L
    .end array-data

    :array_af
    .array-data 8
        0x41e23a4f8ca710c8L    # 2.4464907252207985E9
        0x26b8ac6f1015e3a0L    # 3.732447908988714E-122
    .end array-data

    :array_b0
    .array-data 8
        0x75f0b18f4357ca32L    # 1.2833528310388707E260
        -0x330300b47d078ad1L    # -7.455484435345555E62
        0xfe70652ce984497L    # 4.634547648127526E-232
    .end array-data

    :array_b1
    .array-data 8
        -0x73da3bbc75d18098L    # -3.800190055648844E-250
        -0x5cdace6e35160560L
    .end array-data

    :array_b2
    .array-data 8
        -0x2e49782d0e3fdee1L    # -4.376942290311419E85
        0x16196931ecd1d077L    # 3.241927347877794E-202
        -0x6f6613e1ac83e9d0L
    .end array-data

    :array_b3
    .array-data 8
        -0x210798a98de4c679L    # -3.1204187746529677E149
        -0x7fc462e62d7328c8L
        -0x59d217ddd8ebb408L    # -8.836114507298625E-125
    .end array-data

    :array_b4
    .array-data 8
        -0x2f808d3484393562L    # -5.826364728517844E79
        0x349a02338c31df3aL    # 2.6517816815115364E-55
        -0xfab71f7cce05196L
    .end array-data

    :array_b5
    .array-data 8
        -0x25196cab6aedddadL    # -7.824303833688575E129
        -0x69db130ef34d7a07L    # -5.339368126880753E-202
    .end array-data

    :array_b6
    .array-data 8
        -0x31e547d1edd9a350L    # -1.8008875687025693E68
        0x77845c990e3085e0L
        0x6d83cc56cbda4ee6L    # 3.494399467565636E219
    .end array-data

    :array_b7
    .array-data 8
        -0x1ea5c003c3af79edL    # -9.226267866294485E160
        0x6c827162bab2d800L    # 4.967026044406375E214
        0x483bda2586b5fcc5L    # 9.477590457191629E39
        0x414da21a1bb100f6L    # 3884084.216339226
        -0x2ca4653f2cb289eL    # -1.3875261648400006E295
        -0x76494741d53a690cL
        0xf68f5dc7790ca88L
        -0xd77aca6be044313L    # -5.190506345495765E243
        -0x389cdd3499c9c435L    # -7.948748575096931E35
    .end array-data

    :array_b8
    .array-data 8
        0x128d6e3264479d83L    # 2.605374552579597E-219
        0x42c44caa21e8d8faL    # 4.463900883806595E13
        0x357c27bb38ae0464L    # 4.7032641475367125E-51
    .end array-data

    :array_b9
    .array-data 8
        0x7985e304d8dda736L    # 2.424868258398122E277
        0x2bb97dfc90d2e779L    # 4.661950238840867E-98
        0x793955d63d9bc196L    # 8.77166630978102E275
        -0x49eebb69c13f446eL    # -2.953797162734849E-48
        -0x30e323b744920429L    # -1.2748015716222988E73
        -0x4d43e5610a6bff94L
        -0x589443d062046cdaL    # -8.592538410771425E-119
        0xd3db4447d7bdf0fL
        0x38b6d42150757020L    # 1.717435489483005E-35
    .end array-data

    :array_ba
    .array-data 8
        -0x2ebbb97cb66d5041L    # -3.077224069719369E83
        -0x1b6abc26f96d7303L    # -3.366072627957408E176
        -0x2812f2aeabba3e33L    # -3.5772123753722642E115
    .end array-data

    :array_bb
    .array-data 8
        -0x7eec38b7668fd78cL
        0x3e667b96cbf19e9dL    # 4.187742196835337E-8
        -0x5cd20861c532e273L
        -0xc4dd674db920bf5L
        0x1f74d4d12db1500aL
        -0x3daef5cef40e4be6L    # -2.927417220548141E11
        -0x4855c6ea5ef2a45fL    # -1.5051255975862082E-40
        0x7d1297c22dcea356L    # 2.968661844008445E294
    .end array-data

    :array_bc
    .array-data 8
        0x7f3326e8fcb6caL    # 2.7768754847909994E-306
        -0x735045cab90d813cL
        0x7f487d1d2b59f915L    # 1.3434819098156272E305
    .end array-data

    :array_bd
    .array-data 8
        0x2d6ba5375a0f9d25L    # 6.785686696903092E-90
        -0x7e61956d55bd42c6L    # -7.096606650553064E-301
        0x15a10233c50c778cL
        -0x247929ceea953d04L    # -8.104779322121002E132
        -0xfeaf4ebacf6a66bL    # -8.167517793747483E231
    .end array-data

    :array_be
    .array-data 8
        -0x5dba64ec8e1abbdaL
        0x3961b565970e27f9L    # 2.7284389739287286E-32
        0x7b6f2c4d15ce07efL    # 3.7083883410031264E286
    .end array-data

    :array_bf
    .array-data 8
        -0x32f1a0a2462d990aL    # -1.561816452614296E63
        -0x7f1e889b54530280L
        0x67c4cd660159863bL    # 7.414799264597955E191
        -0x60e83c59bdca16d8L    # -6.761242519441431E-159
        -0xc128d05f54cda7eL    # -2.635596070469083E250
        -0x50b0a1e52d56e313L    # -8.267085357737393E-81
    .end array-data

    :array_c0
    .array-data 8
        0xc2a38f89182bed3L
        0xbfdebb4eab72746L
        -0x1eca494f84b7af3aL    # -1.907963892852616E160
    .end array-data

    :array_c1
    .array-data 8
        -0x607cb81abcfc422L
        0x5eca4b521e0a46fbL    # 4.202698171638969E148
        0x798c0254f426dc0bL    # 3.1031681867991317E277
        -0x672dad3fa281c97bL    # -4.112493132270016E-189
        0x1ca316b405b9e2d4L    # 9.878897182207122E-171
        -0x7e7049a49bd69ffbL
    .end array-data

    :array_c2
    .array-data 8
        0x56a72c129daf1a1dL    # 2.721040113997072E109
        -0x19821369f0e6b373L    # -5.086035451266081E185
        0x7b217d0481fff65fL    # 1.3002736100783106E285
    .end array-data

    :array_c3
    .array-data 8
        0x56cc5294286e640L
        0x4e3565aa9c4cfaffL    # 5.768656065779229E68
        0x389520469eb931e8L    # 3.97337357527823E-36
        -0x145c44453a4ff8e9L    # -3.243748061922904E210
        -0x7f5d6768543dba7cL    # -1.324083730493588E-305
    .end array-data

    :array_c4
    .array-data 8
        0x17b41823afb10da4L    # 1.72042432077433E-194
        0x165231762de40e28L    # 3.713746249647953E-201
        -0x3b4700eb1b885b9cL    # -1.180422207873908E23
    .end array-data

    :array_c5
    .array-data 8
        0x7cedb6f182c68530L    # 5.930564169340833E293
        0x6889f67e2013c03dL    # 3.7905285192604905E195
        0xd4b1f89881af413L
        -0x1d3d5050ca2f8677L    # -5.509474253541989E167
        0x669dab95f0779955L    # 2.0171520716124746E186
    .end array-data

    :array_c6
    .array-data 8
        -0x1c68128cdb3ef42cL    # -5.7793043258098385E171
        0x6fe93ec76e2245ccL    # 1.2248024123174512E231
        0xf773f02cd4099bcL    # 3.655562097777903E-234
    .end array-data

    :array_c7
    .array-data 8
        0x341f33c5ba1a1ae7L    # 1.242700737511035E-57
        0x15035f44a3ed3b68L
    .end array-data

    :array_c8
    .array-data 8
        -0x52e47cf82ae29a47L    # -2.1102841475141084E-91
        -0x2f2bed23e1dee77eL    # -2.380157266247397E81
        -0x281da6b99fa183bdL    # -2.2593024295681114E115
    .end array-data

    :array_c9
    .array-data 8
        0x9db9d43bf5cfd7eL
        0x169c5ca28e1066e7L    # 9.263125032533476E-200
        -0x3ba3afb60b8f4d4aL    # -2.0891770321002934E21
    .end array-data

    :array_ca
    .array-data 8
        0x45e9bb96d5c03edL
        0x160361eb5f2f30d2L
        -0x7d00b8e9aa956939L
    .end array-data

    :array_cb
    .array-data 8
        -0x7dad4ec7a25f09d6L
        0x6ab3b31ac31b1fd3L    # 9.882232265140677E205
    .end array-data

    :array_cc
    .array-data 8
        -0x78e94d844c72ad66L
        -0x2470fc7479ad456dL    # -1.1006867928755605E133
        0x70dde59586b58bb4L
    .end array-data

    :array_cd
    .array-data 8
        -0x36688ee7887ad8cdL    # -3.345722582545929E46
        0x79b581116c01a929L    # 1.9059817490778694E278
    .end array-data

    :array_ce
    .array-data 8
        0x30a72ee2f87e71d7L    # 2.5627340534692367E-74
        0x3e0d2f5bcf08bd9aL    # 8.493951358832781E-10
        0x7cd156273379cafL
    .end array-data

    :array_cf
    .array-data 8
        0x3ed9910f99e458aL
        0x2ac736053df26b48L
    .end array-data

    :array_d0
    .array-data 8
        0x47e5f4a74ec30f71L    # 2.334728139802757E38
        0x48fefecc659ec10eL    # 4.3201151828860235E43
        0x1195bbbf41bf8c2dL    # 5.871521426328214E-224
    .end array-data

    :array_d1
    .array-data 8
        0x7980fd6dc3955814L    # 1.8823409094154634E277
        -0x760cff53515e7d75L    # -9.655562701224417E-261
        0x400f26efc79c9221L    # 3.8940120310455915
    .end array-data

    :array_d2
    .array-data 8
        0x4804c126b5d5f91L
        -0x7ffc9a851c72764aL
        0x6b682d32d1e2fc8fL    # 2.4838276146830358E209
    .end array-data

    :array_d3
    .array-data 8
        0x1a2c7c97df6eca07L
        0x2b771564b70e5576L    # 2.6384227215404883E-99
        0x44ba611df2a9b27cL    # 1.2457302070351612E23
        -0x4b67e4e63aefbbb0L    # -2.457782637332416E-55
    .end array-data

    :array_d4
    .array-data 8
        -0x126d558932c3a92L
        0x616b1c70c9ed14f0L    # 1.9057888104695516E161
        -0x66beb921e79cb1efL    # -4.963370222910954E-187
    .end array-data

    :array_d5
    .array-data 8
        0x7c8f9fa72598f386L    # 9.861834975972108E291
        0x398931b10759ddb0L    # 1.5527067534226892E-31
        -0x583cd486fab2ab9dL    # -3.800927848848549E-117
    .end array-data

    :array_d6
    .array-data 8
        -0x7c401af78271a684L
        -0x4839b6f6e835821bL    # -5.116452807727249E-40
        0x3d6777122548df4fL    # 6.6691884031064E-13
    .end array-data

    :array_d7
    .array-data 8
        0x74bdf0cb951c8504L    # 2.1951133454797107E254
        0x2483795d0461567bL    # 8.573709650855408E-133
    .end array-data

    :array_d8
    .array-data 8
        0x56128f50723dfa3fL    # 4.2566924378531924E106
        0x41cccf7b05c897acL    # 9.667189875671287E8
        -0x2ab0bcf597fa13d5L    # -8.752328230835468E102
    .end array-data

    :array_d9
    .array-data 8
        -0x448435a2428ed470L    # -3.67804110500265E-22
        0x452e7c0c307c91abL    # 1.8426786443535585E25
    .end array-data

    :array_da
    .array-data 8
        -0x4b845dd186e10019L    # -7.043638363965252E-56
        -0x11fa0a8ff3908a8L
        -0x21a4b0940d0b6c9dL    # -3.4102282002437047E146
    .end array-data

    :array_db
    .array-data 8
        -0x4cef4ba89400ad9fL    # -1.0151572584512398E-62
        -0x7ffb8e4b32a0253L
        0x5197558cbf014f92L    # 1.1332645851793451E85
    .end array-data

    :array_dc
    .array-data 8
        -0x93a66cda6e1fa84L
        -0xf6eb08000bc6196L    # -1.7199959771495766E234
        0x6a39d48afd2ce47cL    # 5.061574403042077E203
    .end array-data

    :array_dd
    .array-data 8
        -0x552ba84af4e855b1L
        -0x7b74056fa1b90d61L    # -9.18718977420362E-287
        -0x5245e76741d60315L    # -2.0497295854384894E-88
    .end array-data

    :array_de
    .array-data 8
        -0x646400ab11bbae07L    # -1.105452492147648E-175
        0x1389825dbf3d786dL    # 1.479962361620576E-214
        -0x41afa812864d341fL    # -1.5221040078251727E-8
    .end array-data

    :array_df
    .array-data 8
        0x656026000bb248d6L
        -0x3422fc3c4b3c5b72L    # -2.8457539848985518E57
        0x3bdf905578f1b765L    # 2.6735582103086805E-20
    .end array-data

    :array_e0
    .array-data 8
        0x34eab38c538525cbL    # 8.711725171992456E-54
        -0x659810418ca443eeL
        -0x76ae83a45dc7717cL    # -8.676581460815532E-264
    .end array-data

    :array_e1
    .array-data 8
        0x4e812363b6307f74L    # 1.4785473361756933E70
        0xa02c5fd72bd407bL
    .end array-data

    :array_e2
    .array-data 8
        0x457dc8cb698afea8L    # 5.761131897538569E26
        0x245d1f3d93f7e784L
        -0x53876cd99579c910L
    .end array-data

    :array_e3
    .array-data 8
        0x3c5b76b0bc16f11bL    # 5.955226385350284E-18
        0x165bca57ddfbdc96L    # 5.672803674555594E-201
    .end array-data

    :array_e4
    .array-data 8
        -0x7220753ffbb25913L    # -7.391160245653813E-242
        0x7dc16c9ae7add3b0L    # 5.697699493624506E297
    .end array-data

    :array_e5
    .array-data 8
        -0x5719d63f1eb286e6L
        -0x78491c53a0ace6cfL
        -0x5e76daaf28ecf0b2L
    .end array-data

    :array_e6
    .array-data 8
        0x3e6c6d3be360e9d2L    # 5.2948845683361314E-8
        -0xfb2cf23c236ee45L    # -9.063867847324362E232
    .end array-data

    :array_e7
    .array-data 8
        -0x3b1459e85648c708L
        0x59b8c372db772f01L    # 1.6370040532725142E124
    .end array-data

    :array_e8
    .array-data 8
        -0x60a772de069d147dL
        -0x7f624c9917e17ba6L
    .end array-data

    :array_e9
    .array-data 8
        -0x54872d9d1b88e60aL    # -2.837102897906236E-99
        -0x5de4d70aa0eb15caL
    .end array-data

    :array_ea
    .array-data 8
        0x755e722788dfd10aL    # 2.2857322486987707E257
        0x68561c88d3d34e9fL    # 4.0352894435996034E194
    .end array-data

    :array_eb
    .array-data 8
        0x375de5b150c4641bL    # 5.362553870483467E-42
        -0x3f9e7ac36f11d7b0L    # -140.16364332690364
    .end array-data

    :array_ec
    .array-data 8
        0xb8a119740eae846L
        0x6a1c12f1d6454231L    # 1.3753126299489597E203
    .end array-data

    :array_ed
    .array-data 8
        0x29e85a08bd403829L    # 8.295083437416282E-107
        -0x7d4f61054ea7f0ccL
    .end array-data

    :array_ee
    .array-data 8
        0x30945b458b34706eL    # 1.1251355100491328E-74
        -0x74aaf73dd6810c67L    # -4.48280584018899E-254
    .end array-data

    :array_ef
    .array-data 8
        -0x6866264512dfc80dL
        -0xa5eabfd4c3d1629L    # -4.162927987216063E258
    .end array-data

    :array_f0
    .array-data 8
        -0x3019e60d2f64e0adL    # -7.997383753657953E76
        0x44247c2987236264L    # 1.8894085609749178E20
    .end array-data

    :array_f1
    .array-data 8
        -0x6e9669bf8aad412aL    # -8.640746753856453E-225
        -0x4bf5e5d8b651c916L    # -5.1978928900670116E-58
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 9
    .line 10
    return-void
.end method

.method private static addKnownType(Lcom/google/common/net/MediaType;)Lcom/google/common/net/MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method private computeToString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x2f

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMultimap;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [J

    .line 33
    .line 34
    fill-array-data v2, :array_0

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 48
    .line 49
    new-instance v2, L딝땄땫돰뒵됩둘뎽돳딨뒾딤뒛땁땍둬땪땅뒼된뎡돝둔될뒹딐딎뒘뒬뎽딄뒵땔둡됨돸돴땸뎻뒛땜되뒨딹딨둔딅땵딟딞딟딁듔뒛땧듌땯둡뎬뎸돰둥뒹땵땅딄돤땋듸됨딠뒵듨돼됐듰딽돛뎠든둬될딄뎬땵뎸둣땟돠뒷된땬딃둥딨돠땄땥뒘딟딐땸땪땹땪들뒀돰딻되될뒨둔땮듌딻돨딻뒷됩딁땟땤뒷둥딝뎡듟뒤땨;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-direct {v2, v3}, L딝땄땫돰뒵됩둘뎽돳딨뒾딤뒛땁땍둬땪땅뒼된뎡돝둔될뒹딐딎뒘뒬뎽딄뒵땔둡됨돸돴땸뎻뒛땜되뒨딹딨둔딅땵딟딞딟딁듔뒛땧듌땯둡뎬뎸돰둥뒹땵땅딄돤땋듸됨딠뒵듨돼됐듰딽돛뎠든둬될딄뎬땵뎸둣땟돠뒷된땬딃둥딨돠땄땥뒘딟딐땸땪땹땪들뒀돰딻되될뒨둔땮듌딻돨딻뒷됩딁땟땤뒷둥딝뎡듟뒤땨;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Lcom/google/common/collect/Multimaps;->transformValues(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Function;)Lcom/google/common/collect/ListMultimap;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    sget-object v2, Lcom/google/common/net/MediaType;->PARAMETER_JOINER:Lcom/google/common/base/Joiner$MapJoiner;

    .line 60
    .line 61
    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v2, v0, v1}, Lcom/google/common/base/Joiner$MapJoiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :array_0
    .array-data 8
        0x49dbd6955cfed201L    # 6.357124866401005E47
        -0x174247975435e3f6L    # -3.471291366989432E196
    .end array-data
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    return-object p0
.end method

.method private static create(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/net/MediaType;"
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Lcom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p1}, Lcom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    new-array v1, v1, [J

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    const/16 v2, 0x9

    new-array v2, v2, [J

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 12
    invoke-interface {p2}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/common/net/MediaType;->normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_2

    .line 15
    :cond_2
    new-instance p2, Lcom/google/common/net/MediaType;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    invoke-direct {p2, p0, p1, v0}, Lcom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    .line 16
    sget-object p0, Lcom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/net/MediaType;

    invoke-static {p0, p2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/net/MediaType;

    return-object p0

    nop

    :array_0
    .array-data 8
        0x41fada809800c0bL
        -0x3dc4e200cca03098L    # -1.1646738108781018E11
    .end array-data

    :array_1
    .array-data 8
        -0x6d65689213046dbeL
        -0x2256bc4db2b15824L    # -1.540414592601306E143
    .end array-data

    :array_2
    .array-data 8
        -0x4e47305c0e72a4aL
        0x6230371fd106193cL    # 9.337775150276798E164
        -0x37f64cbeb2f35154L    # -1.0931662557893878E39
        0x4178e0accc303d56L    # 2.6086092761777245E7
        0x87fb28aeb50b494L    # 9.599927425524072E-268
        0xc76a612bc725c06L
        -0x5312c61a181fa13cL    # -2.80222602237959E-92
        -0x4d931c0180eabb01L    # -8.572895907799617E-66
        0x6f21a25c5acf5dd6L    # 2.0887335407981594E227
    .end array-data
.end method

.method public static createApplicationType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :array_0
    .array-data 8
        0x18e1bb35e5124f25L    # 7.959267255462414E-189
        0x909b68a94974d5fL
        -0x30a1823958ac104aL    # -2.154939437112903E74
    .end array-data
.end method

.method public static createAudioType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :array_0
    .array-data 8
        -0x143f93318b4431d5L    # -1.079973313727698E211
        -0x4b9a56427eaaa15fL    # -2.7608981065748714E-56
    .end array-data
.end method

.method private static createConstant(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/net/MediaType;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->of()Lcom/google/common/collect/ImmutableListMultimap;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/common/net/MediaType;->addKnownType(Lcom/google/common/net/MediaType;)Lcom/google/common/net/MediaType;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 19
    .line 20
    return-object p0
.end method

.method private static createConstantUtf8(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/net/MediaType;

    .line 2
    .line 3
    sget-object v1, Lcom/google/common/net/MediaType;->UTF_8_CONSTANT_PARAMETERS:Lcom/google/common/collect/ImmutableListMultimap;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/common/net/MediaType;->addKnownType(Lcom/google/common/net/MediaType;)Lcom/google/common/net/MediaType;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object p1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 19
    .line 20
    return-object p0
.end method

.method public static createFontType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :array_0
    .array-data 8
        -0x2bdcc5444d0dc393L    # -2.053690291972958E97
        -0x384b47018efc71c1L    # -2.7545103223590837E37
    .end array-data
.end method

.method public static createImageType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :array_0
    .array-data 8
        0x298013d23106013fL    # 8.557129289273944E-109
        -0x25c171f51eb31ddaL    # -5.170807882961022E126
    .end array-data
.end method

.method public static createTextType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :array_0
    .array-data 8
        0x7a4bed0ee4163d4dL    # 1.2672865838114785E281
        0x35ad3f2d9a3658d5L    # 3.90848935461826E-50
    .end array-data
.end method

.method public static createVideoType(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [J

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0, p0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :array_0
    .array-data 8
        -0x65c24cda8adb703dL
        -0x27f47c3ffe09404cL    # -1.3551654410477572E116
    .end array-data
.end method

.method private static escapeAndQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, 0x10

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x22

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/16 v4, 0xd

    .line 29
    .line 30
    const/16 v5, 0x5c

    .line 31
    .line 32
    if-eq v3, v4, :cond_0

    .line 33
    .line 34
    if-eq v3, v5, :cond_0

    .line 35
    .line 36
    if-ne v3, v1, :cond_1

    .line 37
    .line 38
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method private static synthetic lambda$computeToString$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/MediaType;->escapeAndQuote(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
.end method

.method private static normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    new-array v2, v2, [J

    .line 16
    .line 17
    fill-array-data v2, :array_0

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    new-array v1, v1, [J

    .line 34
    .line 35
    fill-array-data v1, :array_1

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_0

    .line 50
    .line 51
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_0
    return-object p1

    .line 56
    nop

    .line 57
    :array_0
    .array-data 8
        0x3eb1678c2869fb82L    # 1.0373879903155865E-6
        0x34e50c8b583d48e2L    # 6.867557089028886E-54
        0x9435cc0c97b56b9L
        0x6069a83b330a9cb0L    # 2.752049468969069E156
        -0x24503696c600c33aL    # -4.512470596515805E133
        -0x1b7987e1aff506eeL    # -1.7783421942293466E176
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    :array_1
    .array-data 8
        -0x215173053bbb3c16L    # -1.2207565797559525E148
        0x59b670b0215f7b5fL    # 1.4834219911484604E124
    .end array-data
.end method

.method private static normalizeToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private parametersAsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->asMap()Lcom/google/common/collect/ImmutableMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, L딝땄땫돰뒵됩둘뎽돳딨뒾딤뒛땁땍둬땪땅뒼된뎡돝둔될뒹딐딎뒘뒬뎽딄뒵땔둡됨돸돴땸뎻뒛땜되뒨딹딨둔딅땵딟딞딟딁듔뒛땧듌땯둡뎬뎸돰둥뒹땵땅딄돤땋듸됨딠뒵듨돼됐듰딽돛뎠든둬될딄뎬땵뎸둣땟돠뒷된땬딃둥딨돠땄땥뒘딟딐땸땪땹땪들뒀돰딻되될뒨둔땮듌딻돨딻뒷됩딁땟땤뒷둥딝뎡듟뒤땨;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, L딝땄땫돰뒵됩둘뎽돳딨뒾딤뒛땁땍둬땪땅뒼된뎡돝둔될뒹딐딎뒘뒬뎽딄뒵땔둡됨돸돴땸뎻뒛땜되뒨딹딨둔딅땵딟딞딟딁듔뒛땧듌땯둡뎬뎸돰둥뒹땵땅딄돤땋듸됨딠뒵듨돼됐듰딽돛뎠든둬될딄뎬땵뎸둣땟돠뒷된땬딃둥딨돠땄땥뒘딟딐땸땪땹땪들뒀돰딻되될뒨둔땮듌딻돨딻뒷됩딁땟땤뒷둥딝뎡듟뒤땨;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 9
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/net/MediaType$Tokenizer;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/google/common/net/MediaType$Tokenizer;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    sget-object v1, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/16 v3, 0x2f

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :goto_0
    invoke-virtual {v0}, Lcom/google/common/net/MediaType$Tokenizer;->hasMore()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    sget-object v4, Lcom/google/common/net/MediaType;->LINEAR_WHITE_SPACE:Lcom/google/common/base/CharMatcher;

    .line 35
    .line 36
    invoke-virtual {v0, v4}, Lcom/google/common/net/MediaType$Tokenizer;->consumeTokenIfPresent(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    const/16 v5, 0x3b

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4}, Lcom/google/common/net/MediaType$Tokenizer;->consumeTokenIfPresent(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    sget-object v4, Lcom/google/common/net/MediaType;->TOKEN_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    const/16 v6, 0x3d

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const/16 v7, 0x22

    .line 63
    .line 64
    if-ne v7, v6, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0, v7}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 67
    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-eq v7, v6, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/google/common/net/MediaType$Tokenizer;->previewChar()C

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    const/16 v8, 0x5c

    .line 85
    .line 86
    if-ne v8, v6, :cond_0

    .line 87
    .line 88
    invoke-virtual {v0, v8}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/google/common/base/CharMatcher;->ascii()Lcom/google/common/base/CharMatcher;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v0, v6}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(Lcom/google/common/base/CharMatcher;)C

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    goto :goto_3

    .line 105
    :cond_0
    sget-object v6, Lcom/google/common/net/MediaType;->QUOTED_TEXT_MATCHER:Lcom/google/common/base/CharMatcher;

    .line 106
    .line 107
    invoke-virtual {v0, v6}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v0, v7}, Lcom/google/common/net/MediaType$Tokenizer;->consumeCharacter(C)C

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/common/net/MediaType$Tokenizer;->consumeToken(Lcom/google/common/base/CharMatcher;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    :goto_2
    invoke-virtual {v3, v5, v4}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v2, v1, v0}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;

    .line 136
    .line 137
    .line 138
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-object p0

    .line 140
    :goto_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 141
    .line 142
    const/16 v2, 0x12

    .line 143
    .line 144
    invoke-static {v2, p0}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 154
    .line 155
    const/4 v4, 0x4

    .line 156
    new-array v4, v4, [J

    .line 157
    .line 158
    fill-array-data v4, :array_0

    .line 159
    .line 160
    .line 161
    invoke-direct {v2, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    new-instance p0, Lcom/panda912/muddy/ObfuscatedString;

    .line 175
    .line 176
    const/4 v2, 0x2

    .line 177
    new-array v2, v2, [J

    .line 178
    .line 179
    fill-array-data v2, :array_1

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 183
    .line 184
    .line 185
    invoke-static {p0, v3}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    throw v1

    .line 193
    :array_0
    .array-data 8
        0x5c5eaa06a9aa136L
        0x730fec3f9e5f9ad9L    # 1.7437654725122917E246
        -0x36caff9018b63b36L    # -4.683537279465674E44
        -0x628bbc1d413cf92bL    # -8.591576205776176E-167
    .end array-data

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :array_1
    .array-data 8
        0x574f1d6e18ca39a2L    # 3.741430339910978E112
        0x1be120751a03d85aL    # 2.16395592784602E-174
    .end array-data
.end method

.method public static synthetic 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/net/MediaType;->lambda$computeToString$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public charset()Lcom/google/common/base/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 3
    .line 4
    if-nez v1, :cond_3

    .line 5
    .line 6
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 11
    .line 12
    new-instance v3, Lcom/panda912/muddy/ObfuscatedString;

    .line 13
    .line 14
    new-array v4, v0, [J

    .line 15
    .line 16
    fill-array-data v4, :array_0

    .line 17
    .line 18
    .line 19
    invoke-direct {v3, v4}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Ljava/lang/String;

    .line 46
    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    move-object v3, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    add-int/lit8 v2, v2, 0x23

    .line 73
    .line 74
    invoke-static {v2, v4}, L땸득뎸뒬둥따듔도디돨듽둘땫땍뎰땸되뒈땲돰됴뎠땍뒨돶뎸뎡듐땁뎠뒉드땣듔딨듸뒬땤들됩땄뒵딠듰뒷뒛뒙딌들딜돸딌땁뒛딨돝땯땣땁돤뒋땩돶뎸뒛뒛뒾듼딜뒀둣됨뎰땄돤딌둠뎰둔뒼두땟두땝땲딻뒉땜땯뒉되뒵딽득돳땃땥땠땫땋듬듼듟딀돛돷뒘드뒵둣뒘땫뎡땐둠뒤땲땁땹듰땫되득뒀땥뒹딠디딅뒨;->뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉(ILjava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 81
    .line 82
    .line 83
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 84
    .line 85
    const/4 v6, 0x6

    .line 86
    new-array v6, v6, [J

    .line 87
    .line 88
    fill-array-data v6, :array_1

    .line 89
    .line 90
    .line 91
    invoke-direct {v2, v6}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    new-instance v2, Lcom/panda912/muddy/ObfuscatedString;

    .line 105
    .line 106
    new-array v0, v0, [J

    .line 107
    .line 108
    fill-array-data v0, :array_2

    .line 109
    .line 110
    .line 111
    invoke-direct {v2, v0}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 112
    .line 113
    .line 114
    invoke-static {v2, v5, v4}, L뒵듽드둔뎬듨땻뒤땍뒉득땦돨땡됐땠돸땁듌됴뒈뒀뎹듬땐둣듻둑뒘딜됴돰땣듼뒝땁땩땱딌듼된땀두땥돸딅듼땸뎠듰땬돷땩디딄듻듐땵됐땃뒾딸땔뎡딄듟땟땅됨땅돳딝뒐딁땍됫돸땟딠둣딝돠딎된둡땯되땠듟돷든듬뒹돰딎딠됨됫땜딠땄될땰땱돰땝딝돵딀돶땋뒨돴딐돨땩둣딸될둥돠딽돛디땳딄딄뒀듼돴;->뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀(Lcom/panda912/muddy/ObfuscatedString;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v1

    .line 122
    :cond_2
    iput-object v1, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 123
    .line 124
    :cond_3
    return-object v1

    .line 125
    :array_0
    .array-data 8
        -0x25dbe130a12e6f01L    # -1.7024868607108788E126
        -0x1e4e27c6dd62255aL    # -4.014070761935281E162
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    :array_1
    .array-data 8
        -0x36ae5163a33224e9L    # -1.5772936541369067E45
        0x5af0cdb0e15160bbL    # 1.1647625095198352E130
        0x589732d1b194d7e2L    # 5.85003469012595E118
        -0xfd0fcd74224f97fL    # -2.4073609791639605E232
        0x62d81a18bfc53dd0L    # 1.4212471321679259E168
        -0x7a8a2fcbbfba3326L
    .end array-data

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :array_2
    .array-data 8
        0x292d7f46e63f82fdL
        0x3f92b31a87063ae3L    # 0.018261351100188682
    .end array-data
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/common/net/MediaType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/google/common/net/MediaType;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p1, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-direct {p1}, Lcom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    .line 49
    :cond_2
    return v2
.end method

.method public hasWildcard()Z
    .locals 3

    .line 1
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [J

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 25
    .line 26
    new-array v1, v1, [J

    .line 27
    .line 28
    fill-array-data v1, :array_1

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v0, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 50
    :goto_1
    return v0

    .line 51
    :array_0
    .array-data 8
        -0x66d867e7a1437e11L
        0x4f440712188b91d9L    # 7.077148276789176E73
    .end array-data

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    :array_1
    .array-data 8
        -0x64ebb527f569dc0cL
        0x61df9cd8d6a3338aL    # 2.8444547748740722E163
    .end array-data
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/common/net/MediaType;->hashCode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/google/common/net/MediaType;->parametersAsMap()Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const/4 v3, 0x3

    .line 14
    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v0, v3, v4

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    aput-object v1, v3, v0

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    aput-object v2, v3, v0

    .line 24
    .line 25
    invoke-static {v3}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/google/common/net/MediaType;->hashCode:I

    .line 30
    .line 31
    :cond_0
    return v0
.end method

.method public is(Lcom/google/common/net/MediaType;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    new-array v3, v2, [J

    .line 7
    .line 8
    fill-array-data v3, :array_0

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v3}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p1, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    :cond_0
    iget-object v0, p1, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Lcom/panda912/muddy/ObfuscatedString;

    .line 37
    .line 38
    new-array v2, v2, [J

    .line 39
    .line 40
    fill-array-data v2, :array_1

    .line 41
    .line 42
    .line 43
    invoke-direct {v1, v2}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p1, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object p1, p1, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    .line 84
    const/4 p1, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 p1, 0x0

    .line 87
    :goto_0
    return p1

    .line 88
    nop

    .line 89
    :array_0
    .array-data 8
        0x118b53d19d2832e6L    # 3.6914061052712E-224
        -0x4940d41969687f84L    # -5.4600696513224794E-45
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    :array_1
    .array-data 8
        -0x75370c95f74cdac2L
        -0x627ea53a03e125e4L
    .end array-data
.end method

.method public parameters()Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableListMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 2
    .line 3
    return-object v0
.end method

.method public subtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->toString:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/common/net/MediaType;->computeToString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/common/net/MediaType;->toString:Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v1, v1, [J

    .line 8
    .line 9
    fill-array-data v1, :array_0

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/google/common/net/MediaType;->withParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, v0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 32
    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :array_0
    .array-data 8
        -0x7948383026bed744L
        0x6be0360f00426e88L    # 4.263646918621481E211
    .end array-data
.end method

.method public withParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/common/net/MediaType;->withParameters(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/google/common/net/MediaType;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public withParameters(Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/net/MediaType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/Multimap;)Lcom/google/common/net/MediaType;

    move-result-object p1

    return-object p1
.end method

.method public withParameters(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/google/common/net/MediaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/net/MediaType;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/common/net/MediaType;->normalizeToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMultimap;->entries()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {p1, v1}, Lcom/google/common/net/MediaType;->normalizeParameterValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_1

    .line 12
    :cond_2
    new-instance p2, Lcom/google/common/net/MediaType;

    iget-object v1, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    invoke-direct {p2, v1, v2, v0}, Lcom/google/common/net/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableListMultimap;)V

    .line 13
    new-instance v0, Lcom/panda912/muddy/ObfuscatedString;

    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/panda912/muddy/ObfuscatedString;-><init>([J)V

    invoke-virtual {v0}, Lcom/panda912/muddy/ObfuscatedString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    iput-object p1, p2, Lcom/google/common/net/MediaType;->parsedCharset:Lcom/google/common/base/Optional;

    .line 15
    :cond_3
    sget-object p1, Lcom/google/common/net/MediaType;->KNOWN_TYPES:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/net/MediaType;

    invoke-static {p1, p2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/net/MediaType;

    return-object p1

    nop

    :array_0
    .array-data 8
        0x2220e89e852eb811L    # 2.708204801641648E-144
        -0x63aace787dfffa8cL
    .end array-data
.end method

.method public withoutParameters()Lcom/google/common/net/MediaType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/net/MediaType;->parameters:Lcom/google/common/collect/ImmutableListMultimap;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/common/net/MediaType;->type:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/common/net/MediaType;->subtype:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/google/common/net/MediaType;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/net/MediaType;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method
