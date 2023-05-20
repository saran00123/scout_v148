.class public final Lcom/tbruyelle/rxpermissions2/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tbruyelle/rxpermissions2/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CoordinatorLayout:[I

.field public static final CoordinatorLayout_Layout:[I

.field public static final CoordinatorLayout_Layout_android_layout_gravity:I = 0x0

.field public static final CoordinatorLayout_Layout_layout_anchor:I = 0x1

.field public static final CoordinatorLayout_Layout_layout_anchorGravity:I = 0x2

.field public static final CoordinatorLayout_Layout_layout_behavior:I = 0x3

.field public static final CoordinatorLayout_Layout_layout_dodgeInsetEdges:I = 0x4

.field public static final CoordinatorLayout_Layout_layout_insetEdge:I = 0x5

.field public static final CoordinatorLayout_Layout_layout_keyline:I = 0x6

.field public static final CoordinatorLayout_keylines:I = 0x0

.field public static final CoordinatorLayout_statusBarBackground:I = 0x1

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontVariationSettings:I = 0x4

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_android_ttcIndex:I = 0x3

.field public static final FontFamilyFont_font:I = 0x5

.field public static final FontFamilyFont_fontStyle:I = 0x6

.field public static final FontFamilyFont_fontVariationSettings:I = 0x7

.field public static final FontFamilyFont_fontWeight:I = 0x8

.field public static final FontFamilyFont_ttcIndex:I = 0x9

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5

.field public static final FontFamily_fontProviderSystemFontFamily:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    .line 159
    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/tbruyelle/rxpermissions2/R$styleable;->CoordinatorLayout:[I

    const/4 v0, 0x7

    .line 162
    new-array v1, v0, [I

    fill-array-data v1, :array_2a

    sput-object v1, Lcom/tbruyelle/rxpermissions2/R$styleable;->CoordinatorLayout_Layout:[I

    .line 170
    new-array v0, v0, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/tbruyelle/rxpermissions2/R$styleable;->FontFamily:[I

    const/16 v0, 0xa

    .line 178
    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/tbruyelle/rxpermissions2/R$styleable;->FontFamilyFont:[I

    return-void

    nop

    :array_22
    .array-data 4
        0x7f04020d
        0x7f0403c1
    .end array-data

    :array_2a
    .array-data 4
        0x10100b3
        0x7f04021c
        0x7f04021d
        0x7f04021e
        0x7f04024b
        0x7f040257
        0x7f040258
    .end array-data

    :array_3c
    .array-data 4
        0x7f0401b0
        0x7f0401b1
        0x7f0401b2
        0x7f0401b3
        0x7f0401b4
        0x7f0401b5
        0x7f0401b6
    .end array-data

    :array_4e
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x101056f
        0x1010570
        0x7f0401ae
        0x7f0401b7
        0x7f0401b8
        0x7f0401b9
        0x7f04045b
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
