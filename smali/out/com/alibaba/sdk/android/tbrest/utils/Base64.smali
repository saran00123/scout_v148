.class public Lcom/alibaba/sdk/android/tbrest/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;,
        Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DECODE:I = 0x0

.field public static final DONT_GUNZIP:I = 0x4

.field public static final DO_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "US-ASCII"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x40

    .line 243
    new-array v1, v0, [B

    fill-array-data v1, :array_32

    sput-object v1, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_STANDARD_ALPHABET:[B

    const/16 v1, 0x100

    .line 262
    new-array v2, v1, [B

    fill-array-data v2, :array_56

    sput-object v2, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_STANDARD_DECODABET:[B

    .line 319
    new-array v2, v0, [B

    fill-array-data v2, :array_da

    sput-object v2, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_URL_SAFE_ALPHABET:[B

    .line 337
    new-array v1, v1, [B

    fill-array-data v1, :array_fe

    sput-object v1, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_URL_SAFE_DECODABET:[B

    .line 397
    new-array v0, v0, [B

    fill-array-data v0, :array_182

    sput-object v0, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_ORDERED_ALPHABET:[B

    const/16 v0, 0x101

    .line 415
    new-array v0, v0, [B

    fill-array-data v0, :array_1a6

    sput-object v0, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_ORDERED_DECODABET:[B

    return-void

    nop

    :array_32
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_56
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_da
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_fe
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_182
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    :array_1a6
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)[B
    .registers 1

    .line 175
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->getDecodabet(I)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100([BII[BII)[B
    .registers 6

    .line 175
    invoke-static/range {p0 .. p5}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encode3to4([BII[BII)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200([BI[BII)I
    .registers 5

    .line 175
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->decode4to3([BI[BII)I

    move-result p0

    return p0
.end method

.method static synthetic access$300([B[BII)[B
    .registers 4

    .line 175
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encode3to4([B[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1367
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_8d

    :try_start_2
    const-string v0, "US-ASCII"

    .line 1394
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_d

    .line 1397
    :catch_9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 1402
    :goto_d
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->decode([BIII)[B

    move-result-object p0

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v2, 0x1

    if-eqz p1, :cond_1a

    move p1, v2

    goto :goto_1b

    :cond_1a
    move p1, v1

    :goto_1b
    if-eqz p0, :cond_8c

    .line 1407
    array-length v3, p0

    if-lt v3, v0, :cond_8c

    if-nez p1, :cond_8c

    .line 1409
    aget-byte p1, p0, v1

    and-int/lit16 p1, p1, 0xff

    aget-byte v0, p0, v2

    shl-int/lit8 v0, v0, 0x8

    const v2, 0xff00

    and-int/2addr v0, v2

    or-int/2addr p1, v0

    const v0, 0x8b1f

    if-ne v0, p1, :cond_8c

    const/16 p1, 0x800

    .line 1414
    new-array p1, p1, [B

    const/4 v0, 0x0

    .line 1418
    :try_start_39
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_75
    .catchall {:try_start_39 .. :try_end_3e} :catchall_71

    .line 1419
    :try_start_3e
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_6c
    .catchall {:try_start_3e .. :try_end_43} :catchall_69

    .line 1420
    :try_start_43
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_48} :catch_66
    .catchall {:try_start_43 .. :try_end_48} :catchall_64

    .line 1422
    :goto_48
    :try_start_48
    invoke-virtual {v4, p1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_52

    .line 1423
    invoke-virtual {v2, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_48

    .line 1427
    :cond_52
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_56} :catch_62
    .catchall {:try_start_48 .. :try_end_56} :catchall_60

    .line 1436
    :try_start_56
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_59

    .line 1440
    :catch_59
    :goto_59
    :try_start_59
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5c

    .line 1444
    :catch_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_8c

    goto :goto_8c

    :catchall_60
    move-exception p0

    goto :goto_81

    :catch_62
    move-exception p1

    goto :goto_6f

    :catchall_64
    move-exception p0

    goto :goto_82

    :catch_66
    move-exception p1

    move-object v4, v0

    goto :goto_6f

    :catchall_69
    move-exception p0

    move-object v3, v0

    goto :goto_82

    :catch_6c
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    :goto_6f
    move-object v0, v2

    goto :goto_78

    :catchall_71
    move-exception p0

    move-object v2, v0

    move-object v3, v2

    goto :goto_82

    :catch_75
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    .line 1431
    :goto_78
    :try_start_78
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7f

    .line 1436
    :try_start_7b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_59

    goto :goto_59

    :catchall_7f
    move-exception p0

    move-object v2, v0

    :goto_81
    move-object v0, v4

    :goto_82
    :try_start_82
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_85

    .line 1440
    :catch_85
    :try_start_85
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_88

    .line 1444
    :catch_88
    :try_start_88
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8b

    .line 1446
    :catch_8b
    throw p0

    :catch_8c
    :cond_8c
    :goto_8c
    return-object p0

    .line 1389
    :cond_8d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Input string was null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decode([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1248
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->decode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BIII)[B
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_a5

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_84

    add-int v4, p1, p2

    .line 1292
    array-length v5, p0

    if-gt v4, v5, :cond_84

    if-nez p2, :cond_12

    .line 1300
    new-array p0, v3, [B

    return-object p0

    :cond_12
    const/4 v5, 0x4

    if-lt p2, v5, :cond_6d

    .line 1307
    invoke-static {p3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->getDecodabet(I)[B

    move-result-object v6

    mul-int/2addr p2, v1

    .line 1309
    div-int/2addr p2, v5

    .line 1310
    new-array p2, p2, [B

    .line 1313
    new-array v5, v5, [B

    move v7, v3

    move v8, v7

    :goto_21
    if-ge p1, v4, :cond_67

    .line 1321
    aget-byte v9, p0, p1

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v6, v9

    const/4 v10, -0x5

    if-lt v9, v10, :cond_49

    const/4 v10, -0x1

    if-lt v9, v10, :cond_46

    add-int/lit8 v9, v7, 0x1

    .line 1328
    aget-byte v10, p0, p1

    aput-byte v10, v5, v7

    if-le v9, v1, :cond_45

    .line 1330
    invoke-static {v5, v3, p2, v8, p3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->decode4to3([BI[BII)I

    move-result v7

    add-int/2addr v8, v7

    .line 1335
    aget-byte v7, p0, p1

    const/16 v9, 0x3d

    if-ne v7, v9, :cond_43

    goto :goto_67

    :cond_43
    move v7, v3

    goto :goto_46

    :cond_45
    move v7, v9

    :cond_46
    :goto_46
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    .line 1343
    :cond_49
    new-instance p2, Ljava/io/IOException;

    new-array p3, v0, [Ljava/lang/Object;

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 1346
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v2

    const-string p0, "Bad Base64 input character decimal %d in array position %d"

    .line 1344
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1350
    :cond_67
    :goto_67
    new-array p0, v8, [B

    .line 1351
    invoke-static {p2, v3, p0, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 1302
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Base64-encoded string must have at least four characters, but length specified was "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1293
    :cond_84
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    array-length p0, p0

    .line 1296
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v0

    const-string p0, "Source array with length %d cannot have offset of %d and process %d bytes."

    .line 1294
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1290
    :cond_a5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot decode null source array."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decode4to3([BI[BII)I
    .registers 12

    if-eqz p0, :cond_d4

    if-eqz p2, :cond_cc

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ltz p1, :cond_b1

    add-int/lit8 v3, p1, 0x3

    .line 1167
    array-length v4, p0

    if-ge v3, v4, :cond_b1

    if-ltz p3, :cond_96

    add-int/lit8 v4, p3, 0x2

    .line 1173
    array-length v5, p2

    if-ge v4, v5, :cond_96

    .line 1180
    invoke-static {p4}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->getDecodabet(I)[B

    move-result-object p4

    add-int/lit8 v0, p1, 0x2

    .line 1183
    aget-byte v5, p0, v0

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_39

    .line 1188
    aget-byte v0, p0, p1

    aget-byte v0, p4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x12

    add-int/2addr p1, v2

    aget-byte p0, p0, p1

    aget-byte p0, p4, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0xc

    or-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x10

    int-to-byte p0, p0

    .line 1191
    aput-byte p0, p2, p3

    return v2

    .line 1196
    :cond_39
    aget-byte v5, p0, v3

    if-ne v5, v6, :cond_64

    .line 1202
    aget-byte v3, p0, p1

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/2addr p1, v2

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v3

    aget-byte p0, p0, v0

    aget-byte p0, p4, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x6

    or-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 1206
    aput-byte p1, p2, p3

    add-int/2addr p3, v2

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    .line 1207
    aput-byte p0, p2, p3

    return v1

    .line 1219
    :cond_64
    aget-byte v1, p0, p1

    aget-byte v1, p4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    add-int/2addr p1, v2

    aget-byte p1, p0, p1

    aget-byte p1, p4, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p1, v1

    aget-byte v0, p0, v0

    aget-byte v0, p4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr p1, v0

    aget-byte p0, p0, v3

    aget-byte p0, p4, p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    shr-int/lit8 p1, p0, 0x10

    int-to-byte p1, p1

    .line 1224
    aput-byte p1, p2, p3

    add-int/2addr p3, v2

    shr-int/lit8 p1, p0, 0x8

    int-to-byte p1, p1

    .line 1225
    aput-byte p1, p2, p3

    int-to-byte p0, p0

    .line 1226
    aput-byte p0, p2, v4

    const/4 p0, 0x3

    return p0

    .line 1174
    :cond_96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-array p1, v1, [Ljava/lang/Object;

    array-length p2, p2

    .line 1177
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Destination array with length %d cannot have offset of %d and still store three bytes."

    .line 1175
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1168
    :cond_b1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array p3, v1, [Ljava/lang/Object;

    array-length p0, p0

    .line 1171
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, v2

    const-string p0, "Source array with length %d cannot have offset of %d and still process four bytes."

    .line 1169
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1165
    :cond_cc
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Destination array was null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1162
    :cond_d4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Source array was null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1809
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 1812
    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1e
    .catchall {:try_start_5 .. :try_end_f} :catchall_1c

    .line 1814
    :try_start_f
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_19
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 1821
    :try_start_12
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_15

    :catch_15
    return-void

    :catchall_16
    move-exception p0

    move-object v0, v1

    goto :goto_20

    :catch_19
    move-exception p0

    move-object v0, v1

    goto :goto_1f

    :catchall_1c
    move-exception p0

    goto :goto_20

    :catch_1e
    move-exception p0

    .line 1817
    :goto_1f
    :try_start_1f
    throw p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1c

    .line 1821
    :goto_20
    :try_start_20
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_23

    .line 1823
    :catch_23
    throw p0
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1665
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p0, v2, v4

    if-gtz p0, :cond_42

    .line 1676
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array p0, p0, [B

    .line 1679
    new-instance v2, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    invoke-direct {v2, v3, v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_28} :catch_64
    .catchall {:try_start_1 .. :try_end_28} :catchall_62

    move v0, v1

    :goto_29
    const/16 v3, 0x1000

    .line 1683
    :try_start_2b
    invoke-virtual {v2, p0, v0, v3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_33

    add-int/2addr v0, v3

    goto :goto_29

    .line 1688
    :cond_33
    new-array v3, v0, [B

    .line 1689
    invoke-static {p0, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_3f
    .catchall {:try_start_2b .. :try_end_38} :catchall_3c

    .line 1697
    :try_start_38
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3b

    :catch_3b
    return-object v3

    :catchall_3c
    move-exception p0

    move-object v0, v2

    goto :goto_66

    :catch_3f
    move-exception p0

    move-object v0, v2

    goto :goto_65

    .line 1672
    :cond_42
    :try_start_42
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File is too big for this convenience method ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1674
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes)."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_62} :catch_64
    .catchall {:try_start_42 .. :try_end_62} :catchall_62

    :catchall_62
    move-exception p0

    goto :goto_66

    :catch_64
    move-exception p0

    .line 1693
    :goto_65
    :try_start_65
    throw p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_62

    .line 1697
    :goto_66
    :try_start_66
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_69

    .line 1699
    :catch_69
    throw p0
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1625
    :try_start_1
    new-instance v1, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {v1, v2, p1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_21
    .catchall {:try_start_1 .. :try_end_c} :catchall_1f

    :try_start_c
    const-string p1, "US-ASCII"

    .line 1627
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->write([B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_1c
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    .line 1634
    :try_start_15
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_18

    :catch_18
    return-void

    :catchall_19
    move-exception p0

    move-object v0, v1

    goto :goto_23

    :catch_1c
    move-exception p0

    move-object v0, v1

    goto :goto_22

    :catchall_1f
    move-exception p0

    goto :goto_23

    :catch_21
    move-exception p0

    .line 1630
    :goto_22
    :try_start_22
    throw p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    .line 1634
    :goto_23
    :try_start_23
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_26

    .line 1636
    :catch_26
    throw p0
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1473
    invoke-static {p0, v0, v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static decodeToObject(Ljava/lang/String;ILjava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1502
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 1509
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_a} :catch_30
    .catchall {:try_start_5 .. :try_end_a} :catchall_2d

    if-nez p2, :cond_12

    .line 1513
    :try_start_c
    new-instance p0, Ljava/io/ObjectInputStream;

    invoke-direct {p0, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_17

    .line 1519
    :cond_12
    new-instance p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$1;

    invoke-direct {p0, v0, p2}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$1;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V

    :goto_17
    move-object p1, p0

    .line 1535
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_29
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_1c} :catch_25
    .catchall {:try_start_c .. :try_end_1c} :catchall_23

    .line 1545
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_1f

    .line 1549
    :catch_1f
    :try_start_1f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_22

    :catch_22
    return-object p0

    :catchall_23
    move-exception p0

    goto :goto_39

    :catch_25
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    goto :goto_32

    :catch_29
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    goto :goto_35

    :catchall_2d
    move-exception p0

    move-object v0, p1

    goto :goto_39

    :catch_30
    move-exception p0

    move-object p2, p1

    .line 1541
    :goto_32
    :try_start_32
    throw p0

    :catch_33
    move-exception p0

    move-object p2, p1

    .line 1538
    :goto_35
    throw p0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p0

    move-object v0, p1

    move-object p1, p2

    .line 1545
    :goto_39
    :try_start_39
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3c

    .line 1549
    :catch_3c
    :try_start_3c
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_3f

    .line 1551
    :catch_3f
    throw p0
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 7

    const/4 v0, 0x3

    .line 622
    new-array v1, v0, [B

    const/4 v2, 0x4

    .line 623
    new-array v2, v2, [B

    .line 625
    :goto_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 626
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    .line 627
    invoke-virtual {p0, v1, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 628
    invoke-static {v2, v1, v3, v4}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encode3to4([B[BII)[B

    .line 629
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_1f
    return-void
.end method

.method public static encode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .registers 8

    const/4 v0, 0x3

    .line 647
    new-array v1, v0, [B

    const/4 v2, 0x4

    .line 648
    new-array v3, v2, [B

    .line 650
    :cond_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 651
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    .line 652
    invoke-virtual {p0, v1, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 653
    invoke-static {v3, v1, v4, v5}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encode3to4([B[BII)[B

    :goto_1b
    if-ge v5, v2, :cond_6

    .line 655
    aget-byte v4, v3, v5

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_28
    return-void
.end method

.method private static encode3to4([BII[BII)[B
    .registers 10

    .line 563
    invoke-static {p5}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->getAlphabet(I)[B

    move-result-object p5

    const/4 v0, 0x0

    if-lez p2, :cond_e

    .line 577
    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_f

    :cond_e
    move v1, v0

    :goto_f
    const/4 v2, 0x1

    if-le p2, v2, :cond_1b

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    goto :goto_1c

    :cond_1b
    move v3, v0

    :goto_1c
    or-int/2addr v1, v3

    const/4 v3, 0x2

    if-le p2, v3, :cond_27

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    shl-int/lit8 p0, p0, 0x18

    ushr-int/lit8 v0, p0, 0x18

    :cond_27
    or-int p0, v1, v0

    const/16 p1, 0x3d

    const/4 v0, 0x3

    if-eq p2, v2, :cond_73

    if-eq p2, v3, :cond_55

    if-eq p2, v0, :cond_33

    return-object p3

    :cond_33
    ushr-int/lit8 p1, p0, 0x12

    .line 583
    aget-byte p1, p5, p1

    aput-byte p1, p3, p4

    add-int/lit8 p1, p4, 0x1

    ushr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0x3f

    .line 584
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x2

    ushr-int/lit8 p2, p0, 0x6

    and-int/lit8 p2, p2, 0x3f

    .line 585
    aget-byte p2, p5, p2

    aput-byte p2, p3, p1

    add-int/2addr p4, v0

    and-int/lit8 p0, p0, 0x3f

    .line 586
    aget-byte p0, p5, p0

    aput-byte p0, p3, p4

    return-object p3

    :cond_55
    ushr-int/lit8 p2, p0, 0x12

    .line 590
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    .line 591
    aget-byte v1, p5, v1

    aput-byte v1, p3, p2

    add-int/lit8 p2, p4, 0x2

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 592
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/2addr p4, v0

    .line 593
    aput-byte p1, p3, p4

    return-object p3

    :cond_73
    ushr-int/lit8 p2, p0, 0x12

    .line 597
    aget-byte p2, p5, p2

    aput-byte p2, p3, p4

    add-int/lit8 p2, p4, 0x1

    ushr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x3f

    .line 598
    aget-byte p0, p5, p0

    aput-byte p0, p3, p2

    add-int/lit8 p0, p4, 0x2

    .line 599
    aput-byte p1, p3, p0

    add-int/2addr p4, v0

    .line 600
    aput-byte p1, p3, p4

    return-object p3
.end method

.method private static encode3to4([B[BII)[B
    .registers 10

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v5, p3

    .line 526
    invoke-static/range {v0 .. v5}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encode3to4([BII[BII)[B

    return-object p0
.end method

.method public static encodeBase64String([B)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_a

    .line 1258
    array-length v0, p0

    if-lez v0, :cond_a

    .line 1259
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    const-string p0, ""

    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .registers 3

    .line 801
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 882
    :try_start_1
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    const/4 p0, 0x0

    :goto_7
    return-object p0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 936
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object p0

    .line 940
    :try_start_4
    new-instance p1, Ljava/lang/String;

    const-string p2, "US-ASCII"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_c

    return-object p1

    .line 943
    :catch_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method

.method public static encodeBytesToBytes([B)[B
    .registers 3

    .line 964
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeBytesToBytes([BIII)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static encodeBytesToBytes([BIII)[B
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    if-eqz v0, :cond_11d

    if-ltz v7, :cond_106

    if-ltz v8, :cond_ef

    add-int v1, v7, v8

    .line 1015
    array-length v2, v0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-gt v1, v2, :cond_cc

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_63

    const/4 v1, 0x0

    .line 1030
    :try_start_18
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_52
    .catchall {:try_start_18 .. :try_end_1d} :catchall_4e

    .line 1031
    :try_start_1d
    new-instance v3, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v3, v2, v4}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_49
    .catchall {:try_start_1d .. :try_end_24} :catchall_46

    .line 1032
    :try_start_24
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_43
    .catchall {:try_start_24 .. :try_end_29} :catchall_41

    .line 1034
    :try_start_29
    invoke-virtual {v4, v0, v7, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 1035
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_3f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_3d

    .line 1044
    :try_start_2f
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_32

    .line 1048
    :catch_32
    :try_start_32
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_35

    .line 1052
    :catch_35
    :try_start_35
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_38

    .line 1057
    :catch_38
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catchall_3d
    move-exception v0

    goto :goto_58

    :catch_3f
    move-exception v0

    goto :goto_4c

    :catchall_41
    move-exception v0

    goto :goto_59

    :catch_43
    move-exception v0

    move-object v4, v1

    goto :goto_4c

    :catchall_46
    move-exception v0

    move-object v3, v1

    goto :goto_59

    :catch_49
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    :goto_4c
    move-object v1, v2

    goto :goto_55

    :catchall_4e
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto :goto_59

    :catch_52
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    .line 1040
    :goto_55
    :try_start_55
    throw v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v0

    move-object v2, v1

    :goto_58
    move-object v1, v4

    .line 1044
    :goto_59
    :try_start_59
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5c

    .line 1048
    :catch_5c
    :try_start_5c
    invoke-virtual {v3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_5f

    .line 1052
    :catch_5f
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_62

    .line 1054
    :catch_62
    throw v0

    :cond_63
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_69

    move v11, v9

    goto :goto_6a

    :cond_69
    move v11, v10

    .line 1071
    :goto_6a
    div-int/lit8 v1, v8, 0x3

    const/4 v12, 0x4

    mul-int/2addr v1, v12

    rem-int/lit8 v2, v8, 0x3

    if-lez v2, :cond_74

    move v2, v12

    goto :goto_75

    :cond_74
    move v2, v10

    :goto_75
    add-int/2addr v1, v2

    if-eqz v11, :cond_7b

    .line 1075
    div-int/lit8 v2, v1, 0x4c

    add-int/2addr v1, v2

    .line 1078
    :cond_7b
    new-array v13, v1, [B

    add-int/lit8 v14, v8, -0x2

    move v15, v10

    move/from16 v16, v15

    move/from16 v17, v16

    :goto_84
    if-ge v15, v14, :cond_ad

    add-int v2, v15, v7

    const/4 v3, 0x3

    move-object/from16 v1, p0

    move-object v4, v13

    move/from16 v5, v16

    move/from16 v6, p3

    .line 1085
    invoke-static/range {v1 .. v6}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encode3to4([BII[BII)[B

    add-int/lit8 v1, v17, 0x4

    if-eqz v11, :cond_a6

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_a6

    add-int/lit8 v1, v16, 0x4

    const/16 v2, 0xa

    .line 1089
    aput-byte v2, v13, v1

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v10

    goto :goto_a8

    :cond_a6
    move/from16 v17, v1

    :goto_a8
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v16, v16, 0x4

    goto :goto_84

    :cond_ad
    if-ge v15, v8, :cond_bf

    add-int v2, v15, v7

    sub-int v3, v8, v15

    move-object/from16 v1, p0

    move-object v4, v13

    move/from16 v5, v16

    move/from16 v6, p3

    .line 1096
    invoke-static/range {v1 .. v6}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encode3to4([BII[BII)[B

    add-int/lit8 v16, v16, 0x4

    :cond_bf
    move/from16 v0, v16

    .line 1101
    array-length v1, v13

    sub-int/2addr v1, v9

    if-gt v0, v1, :cond_cb

    .line 1106
    new-array v1, v0, [B

    .line 1107
    invoke-static {v13, v10, v1, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_cb
    return-object v13

    .line 1016
    :cond_cc
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1019
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "Cannot have offset of %d and length of %d with array of length %d"

    .line 1017
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1011
    :cond_ef
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have length offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have negative offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_11d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot serialize a null array."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1777
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 1780
    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_24
    .catchall {:try_start_5 .. :try_end_f} :catchall_22

    :try_start_f
    const-string p1, "US-ASCII"

    .line 1782
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_1f
    .catchall {:try_start_f .. :try_end_18} :catchall_1c

    .line 1789
    :try_start_18
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1b

    :catch_1b
    return-void

    :catchall_1c
    move-exception p0

    move-object v0, v1

    goto :goto_26

    :catch_1f
    move-exception p0

    move-object v0, v1

    goto :goto_25

    :catchall_22
    move-exception p0

    goto :goto_26

    :catch_24
    move-exception p0

    .line 1785
    :goto_25
    :try_start_25
    throw p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 1789
    :goto_26
    :try_start_26
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_29

    .line 1791
    :catch_29
    throw p0
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1729
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1730
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    double-to-int p0, v2

    const/16 v2, 0x28

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [B

    .line 1737
    new-instance v2, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x1

    invoke-direct {v2, v3, v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2d} :catch_4c
    .catchall {:try_start_1 .. :try_end_2d} :catchall_4a

    const/4 v0, 0x0

    move v1, v0

    :goto_2f
    const/16 v3, 0x1000

    .line 1741
    :try_start_31
    invoke-virtual {v2, p0, v1, v3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_39

    add-int/2addr v1, v3

    goto :goto_2f

    .line 1746
    :cond_39
    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    invoke-direct {v3, p0, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_40} :catch_47
    .catchall {:try_start_31 .. :try_end_40} :catchall_44

    .line 1755
    :try_start_40
    invoke-virtual {v2}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->close()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_43

    :catch_43
    return-object v3

    :catchall_44
    move-exception p0

    move-object v0, v2

    goto :goto_4e

    :catch_47
    move-exception p0

    move-object v0, v2

    goto :goto_4d

    :catchall_4a
    move-exception p0

    goto :goto_4e

    :catch_4c
    move-exception p0

    .line 1751
    :goto_4d
    :try_start_4d
    throw p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    .line 1755
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_51

    .line 1757
    :catch_51
    throw p0
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 684
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_81

    const/4 v0, 0x0

    .line 738
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_6b
    .catchall {:try_start_3 .. :try_end_8} :catchall_66

    .line 739
    :try_start_8
    new-instance v2, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;

    or-int/lit8 v3, p1, 0x1

    invoke-direct {v2, v1, v3}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_60
    .catchall {:try_start_8 .. :try_end_f} :catchall_5c

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_27

    .line 742
    :try_start_13
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_57
    .catchall {:try_start_13 .. :try_end_18} :catchall_54

    .line 743
    :try_start_18
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_22
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    move-object v0, v3

    goto :goto_2f

    :catchall_1f
    move-exception p0

    goto/16 :goto_74

    :catch_22
    move-exception p0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_6f

    .line 746
    :cond_27
    :try_start_27
    new-instance p1, Ljava/io/ObjectOutputStream;

    invoke-direct {p1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_57
    .catchall {:try_start_27 .. :try_end_2c} :catchall_54

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 748
    :goto_2f
    :try_start_2f
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_22
    .catchall {:try_start_2f .. :try_end_32} :catchall_1f

    .line 757
    :try_start_32
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_35

    .line 761
    :catch_35
    :try_start_35
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_38

    .line 765
    :catch_38
    :try_start_38
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3b

    .line 769
    :catch_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3e

    .line 776
    :catch_3e
    :try_start_3e
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "US-ASCII"

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_49
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3e .. :try_end_49} :catch_4a

    return-object p0

    .line 780
    :catch_4a
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0

    :catchall_54
    move-exception p0

    move-object p1, v0

    goto :goto_74

    :catch_57
    move-exception p0

    move-object p1, v0

    move-object v0, v1

    move-object v1, p1

    goto :goto_6f

    :catchall_5c
    move-exception p0

    move-object p1, v0

    move-object v2, p1

    goto :goto_74

    :catch_60
    move-exception p0

    move-object p1, v0

    move-object v2, p1

    move-object v0, v1

    move-object v1, v2

    goto :goto_6f

    :catchall_66
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    move-object v2, v1

    goto :goto_74

    :catch_6b
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    move-object v2, v1

    .line 753
    :goto_6f
    :try_start_6f
    throw p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 757
    :goto_74
    :try_start_74
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_77

    .line 761
    :catch_77
    :try_start_77
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7a

    .line 765
    :catch_7a
    :try_start_7a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7d

    .line 769
    :catch_7d
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_80

    .line 771
    :catch_80
    throw p0

    .line 727
    :cond_81
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Cannot serialize a null object."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encodeToFile([BLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_23

    const/4 v0, 0x0

    .line 1586
    :try_start_3
    new-instance v1, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {v1, v2, p1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_1d
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b

    .line 1588
    :try_start_e
    invoke-virtual {v1, p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->write([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_18
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 1595
    :try_start_11
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    return-void

    :catchall_15
    move-exception p0

    move-object v0, v1

    goto :goto_1f

    :catch_18
    move-exception p0

    move-object v0, v1

    goto :goto_1e

    :catchall_1b
    move-exception p0

    goto :goto_1f

    :catch_1d
    move-exception p0

    .line 1591
    :goto_1e
    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1b

    .line 1595
    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_22

    .line 1597
    :catch_22
    throw p0

    .line 1581
    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Data to encode was null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final getAlphabet(I)[B
    .registers 3

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 477
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_URL_SAFE_ALPHABET:[B

    return-object p0

    :cond_9
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_11

    .line 479
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_ORDERED_ALPHABET:[B

    return-object p0

    .line 481
    :cond_11
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_STANDARD_ALPHABET:[B

    return-object p0
.end method

.method private static final getDecodabet(I)[B
    .registers 3

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    .line 493
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_URL_SAFE_DECODABET:[B

    return-object p0

    :cond_9
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_11

    .line 495
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_ORDERED_DECODABET:[B

    return-object p0

    .line 497
    :cond_11
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->_STANDARD_DECODABET:[B

    return-object p0
.end method
