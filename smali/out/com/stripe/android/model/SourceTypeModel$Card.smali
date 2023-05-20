.class public final Lcom/stripe/android/model/SourceTypeModel$Card;
.super Lcom/stripe/android/model/SourceTypeModel;
.source "SourceTypeModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/SourceTypeModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Card"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/SourceTypeModel$Card$Creator;,
        Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008$\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001BB\u0093\u0001\u0008\u0000\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u00101\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001eJ\u0010\u00102\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001eJ\u000b\u00103\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u009c\u0001\u00104\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00c6\u0001\u00a2\u0006\u0002\u00105J\t\u00106\u001a\u00020\u000bH\u00d6\u0001J\u0013\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010:H\u00d6\u0003J\t\u0010;\u001a\u00020\u000bH\u00d6\u0001J\t\u0010<\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u000bH\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0016R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008\u001d\u0010\u001eR\u0015\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u001f\u001a\u0004\u0008 \u0010\u001eR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0016R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'\u00a8\u0006C"
    }
    d2 = {
        "Lcom/stripe/android/model/SourceTypeModel$Card;",
        "Lcom/stripe/android/model/SourceTypeModel;",
        "addressLine1Check",
        "",
        "addressZipCheck",
        "brand",
        "Lcom/stripe/android/model/CardBrand;",
        "country",
        "cvcCheck",
        "dynamicLast4",
        "expiryMonth",
        "",
        "expiryYear",
        "funding",
        "Lcom/stripe/android/model/CardFunding;",
        "last4",
        "threeDSecureStatus",
        "Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;",
        "tokenizationMethod",
        "Lcom/stripe/android/model/TokenizationMethod;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;)V",
        "getAddressLine1Check",
        "()Ljava/lang/String;",
        "getAddressZipCheck",
        "getBrand",
        "()Lcom/stripe/android/model/CardBrand;",
        "getCountry",
        "getCvcCheck",
        "getDynamicLast4",
        "getExpiryMonth",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getExpiryYear",
        "getFunding",
        "()Lcom/stripe/android/model/CardFunding;",
        "getLast4",
        "getThreeDSecureStatus",
        "()Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;",
        "getTokenizationMethod",
        "()Lcom/stripe/android/model/TokenizationMethod;",
        "component1",
        "component10",
        "component11",
        "component12",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;)Lcom/stripe/android/model/SourceTypeModel$Card;",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "ThreeDSecureStatus",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/stripe/android/model/SourceTypeModel$Card;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final addressLine1Check:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final addressZipCheck:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final brand:Lcom/stripe/android/model/CardBrand;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final country:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cvcCheck:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dynamicLast4:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final expiryMonth:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final expiryYear:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final funding:Lcom/stripe/android/model/CardFunding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final last4:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/model/SourceTypeModel$Card$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/SourceTypeModel$Card$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/SourceTypeModel$Card;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;)V
    .registers 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/model/CardBrand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/model/CardFunding;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/stripe/android/model/TokenizationMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "brand"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Lcom/stripe/android/model/SourceTypeModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    iput-object p4, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    iput-object p5, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    iput-object p7, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    iput-object p10, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    iput-object p11, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    iput-object p12, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 31

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 11
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    goto :goto_e

    :cond_c
    move-object/from16 v4, p1

    :goto_e
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_17

    .line 12
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    goto :goto_19

    :cond_17
    move-object/from16 v5, p2

    :goto_19
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_22

    .line 14
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    goto :goto_24

    :cond_22
    move-object/from16 v7, p4

    :goto_24
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2d

    .line 15
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    goto :goto_2f

    :cond_2d
    move-object/from16 v8, p5

    :goto_2f
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_38

    .line 16
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_3a

    :cond_38
    move-object/from16 v9, p6

    :goto_3a
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_43

    .line 17
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    move-object v10, v1

    goto :goto_45

    :cond_43
    move-object/from16 v10, p7

    :goto_45
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4e

    .line 18
    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    move-object v11, v1

    goto :goto_50

    :cond_4e
    move-object/from16 v11, p8

    :goto_50
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_59

    .line 19
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/CardFunding;

    move-object v12, v1

    goto :goto_5b

    :cond_59
    move-object/from16 v12, p9

    :goto_5b
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_64

    .line 20
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v13, v1

    goto :goto_66

    :cond_64
    move-object/from16 v13, p10

    :goto_66
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6f

    .line 21
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    move-object v14, v1

    goto :goto_71

    :cond_6f
    move-object/from16 v14, p11

    :goto_71
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_7a

    .line 22
    move-object v0, v2

    check-cast v0, Lcom/stripe/android/model/TokenizationMethod;

    move-object v15, v0

    goto :goto_7c

    :cond_7a
    move-object/from16 v15, p12

    :goto_7c
    move-object/from16 v3, p0

    move-object/from16 v6, p3

    invoke-direct/range {v3 .. v15}, Lcom/stripe/android/model/SourceTypeModel$Card;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/SourceTypeModel$Card;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;ILjava/lang/Object;)Lcom/stripe/android/model/SourceTypeModel$Card;
    .registers 28

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    goto :goto_1c

    :cond_1a
    move-object/from16 v4, p3

    :goto_1c
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_23

    iget-object v5, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    goto :goto_25

    :cond_23
    move-object/from16 v5, p4

    :goto_25
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2c

    iget-object v6, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    goto :goto_2e

    :cond_2c
    move-object/from16 v6, p5

    :goto_2e
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_35

    iget-object v7, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    goto :goto_37

    :cond_35
    move-object/from16 v7, p6

    :goto_37
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3e

    iget-object v8, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    goto :goto_40

    :cond_3e
    move-object/from16 v8, p7

    :goto_40
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_47

    iget-object v9, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    goto :goto_49

    :cond_47
    move-object/from16 v9, p8

    :goto_49
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_50

    iget-object v10, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    goto :goto_52

    :cond_50
    move-object/from16 v10, p9

    :goto_52
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_59

    iget-object v11, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    goto :goto_5b

    :cond_59
    move-object/from16 v11, p10

    :goto_5b
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_62

    iget-object v12, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    goto :goto_64

    :cond_62
    move-object/from16 v12, p11

    :goto_64
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_6b

    iget-object v1, v0, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    goto :goto_6d

    :cond_6b
    move-object/from16 v1, p12

    :goto_6d
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/stripe/android/model/SourceTypeModel$Card;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;)Lcom/stripe/android/model/SourceTypeModel$Card;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    return-object v0
.end method

.method public final component12()Lcom/stripe/android/model/TokenizationMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/stripe/android/model/CardBrand;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Lcom/stripe/android/model/CardFunding;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;)Lcom/stripe/android/model/SourceTypeModel$Card;
    .registers 27
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/model/CardBrand;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/model/CardFunding;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/stripe/android/model/TokenizationMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "brand"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/model/SourceTypeModel$Card;

    move-object v1, v0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/stripe/android/model/SourceTypeModel$Card;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/stripe/android/model/CardFunding;Ljava/lang/String;Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;Lcom/stripe/android/model/TokenizationMethod;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_83

    instance-of v0, p1, Lcom/stripe/android/model/SourceTypeModel$Card;

    if-eqz v0, :cond_81

    check-cast p1, Lcom/stripe/android/model/SourceTypeModel$Card;

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    iget-object v1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    iget-object p1, p1, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_83

    :cond_81
    const/4 p1, 0x0

    return p1

    :cond_83
    :goto_83
    const/4 p1, 0x1

    return p1
.end method

.method public final getAddressLine1Check()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressZipCheck()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final getBrand()Lcom/stripe/android/model/CardBrand;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getCvcCheck()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    return-object v0
.end method

.method public final getDynamicLast4()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpiryMonth()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getExpiryYear()Ljava/lang/Integer;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getFunding()Lcom/stripe/android/model/CardFunding;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    return-object v0
.end method

.method public final getLast4()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final getThreeDSecureStatus()Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    return-object v0
.end method

.method public final getTokenizationMethod()Lcom/stripe/android/model/TokenizationMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    if-eqz v2, :cond_30

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_31

    :cond_30
    move v2, v1

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v1

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_58

    :cond_57
    move v2, v1

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_65

    :cond_64
    move v2, v1

    :goto_65
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_72

    :cond_71
    move v2, v1

    :goto_72
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7f

    :cond_7e
    move v2, v1

    :goto_7f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8c

    :cond_8b
    move v2, v1

    :goto_8c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    if-eqz v2, :cond_97

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_97
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Card(addressLine1Check="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressZipCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cvcCheck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dynamicLast4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expiryMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiryYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", funding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", last4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", threeDSecureStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tokenizationMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressLine1Check:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->addressZipCheck:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->brand:Lcom/stripe/android/model/CardBrand;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->country:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->cvcCheck:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->dynamicLast4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryMonth:Ljava/lang/Integer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_38

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3b

    :cond_38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3b
    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->expiryYear:Ljava/lang/Integer;

    if-eqz p2, :cond_4a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4d

    :cond_4a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4d
    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->funding:Lcom/stripe/android/model/CardFunding;

    if-eqz p2, :cond_5c

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5f

    :cond_5c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5f
    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->last4:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->threeDSecureStatus:Lcom/stripe/android/model/SourceTypeModel$Card$ThreeDSecureStatus;

    if-eqz p2, :cond_73

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_76

    :cond_73
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_76
    iget-object p2, p0, Lcom/stripe/android/model/SourceTypeModel$Card;->tokenizationMethod:Lcom/stripe/android/model/TokenizationMethod;

    if-eqz p2, :cond_85

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_88

    :cond_85
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_88
    return-void
.end method
