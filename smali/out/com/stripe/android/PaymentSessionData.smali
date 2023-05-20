.class public final Lcom/stripe/android/PaymentSessionData;
.super Ljava/lang/Object;
.source "PaymentSessionData.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentSessionData$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004BY\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0012J\t\u0010\u001f\u001a\u00020\u0006H\u00c2\u0003J\t\u0010 \u001a\u00020\u0006H\u00c2\u0003J\t\u0010!\u001a\u00020\tH\u00c6\u0003J\t\u0010\"\u001a\u00020\tH\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\t\u0010&\u001a\u00020\u0006H\u00c6\u0003J_\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0006H\u00c6\u0001J\t\u0010(\u001a\u00020)H\u00d6\u0001J\u0013\u0010*\u001a\u00020\u00062\u0008\u0010+\u001a\u0004\u0018\u00010,H\u00d6\u0003J\t\u0010-\u001a\u00020)H\u00d6\u0001J\t\u0010.\u001a\u00020/H\u00d6\u0001J\u0019\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020)H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0014R\u0011\u0010\u0011\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0016\u00a8\u00065"
    }
    d2 = {
        "Lcom/stripe/android/PaymentSessionData;",
        "Landroid/os/Parcelable;",
        "config",
        "Lcom/stripe/android/PaymentSessionConfig;",
        "(Lcom/stripe/android/PaymentSessionConfig;)V",
        "isShippingInfoRequired",
        "",
        "isShippingMethodRequired",
        "cartTotal",
        "",
        "shippingTotal",
        "shippingInformation",
        "Lcom/stripe/android/model/ShippingInformation;",
        "shippingMethod",
        "Lcom/stripe/android/model/ShippingMethod;",
        "paymentMethod",
        "Lcom/stripe/android/model/PaymentMethod;",
        "useGooglePay",
        "(ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;Z)V",
        "getCartTotal",
        "()J",
        "isPaymentReadyToCharge",
        "()Z",
        "getPaymentMethod",
        "()Lcom/stripe/android/model/PaymentMethod;",
        "getShippingInformation",
        "()Lcom/stripe/android/model/ShippingInformation;",
        "getShippingMethod",
        "()Lcom/stripe/android/model/ShippingMethod;",
        "getShippingTotal",
        "getUseGooglePay",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
            "Lcom/stripe/android/PaymentSessionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cartTotal:J

.field private final isShippingInfoRequired:Z

.field private final isShippingMethodRequired:Z

.field private final paymentMethod:Lcom/stripe/android/model/PaymentMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shippingInformation:Lcom/stripe/android/model/ShippingInformation;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shippingMethod:Lcom/stripe/android/model/ShippingMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shippingTotal:J

.field private final useGooglePay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/PaymentSessionData$Creator;

    invoke-direct {v0}, Lcom/stripe/android/PaymentSessionData$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/PaymentSessionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/PaymentSessionConfig;)V
    .registers 16
    .param p1    # Lcom/stripe/android/PaymentSessionConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/stripe/android/PaymentSessionConfig;->isShippingInfoRequired()Z

    move-result v2

    .line 52
    invoke-virtual {p1}, Lcom/stripe/android/PaymentSessionConfig;->isShippingMethodRequired()Z

    move-result v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v1, p0

    .line 50
    invoke-direct/range {v1 .. v13}, Lcom/stripe/android/PaymentSessionData;-><init>(ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;Z)V
    .registers 11
    .param p7    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/model/ShippingMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    iput-boolean p2, p0, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    iput-wide p3, p0, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    iput-wide p5, p0, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    iput-object p7, p0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    iput-object p8, p0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    iput-object p9, p0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    iput-boolean p10, p0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 28

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x4

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_a

    move-wide v7, v2

    goto :goto_c

    :cond_a
    move-wide/from16 v7, p3

    :goto_c
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_12

    move-wide v9, v2

    goto :goto_14

    :cond_12
    move-wide/from16 v9, p5

    :goto_14
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 31
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/ShippingInformation;

    move-object v11, v1

    goto :goto_20

    :cond_1e
    move-object/from16 v11, p7

    :goto_20
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_29

    .line 36
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/ShippingMethod;

    move-object v12, v1

    goto :goto_2b

    :cond_29
    move-object/from16 v12, p8

    :goto_2b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_34

    .line 41
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/model/PaymentMethod;

    move-object v13, v1

    goto :goto_36

    :cond_34
    move-object/from16 v13, p9

    :goto_36
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    move v14, v0

    goto :goto_3f

    :cond_3d
    move/from16 v14, p10

    :goto_3f
    move-object v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    .line 48
    invoke-direct/range {v4 .. v14}, Lcom/stripe/android/PaymentSessionData;-><init>(ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;Z)V

    return-void
.end method

.method private final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    return v0
.end method

.method private final component2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    return v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/PaymentSessionData;ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;ZILjava/lang/Object;)Lcom/stripe/android/PaymentSessionData;
    .registers 24

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-boolean v2, v0, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    goto :goto_b

    :cond_a
    move v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    goto :goto_13

    :cond_12
    move v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-wide v4, v0, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    goto :goto_1b

    :cond_1a
    move-wide v4, p3

    :goto_1b
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_22

    iget-wide v6, v0, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    goto :goto_24

    :cond_22
    move-wide/from16 v6, p5

    :goto_24
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_2b

    iget-object v8, v0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    goto :goto_2d

    :cond_2b
    move-object/from16 v8, p7

    :goto_2d
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_34

    iget-object v9, v0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    goto :goto_36

    :cond_34
    move-object/from16 v9, p8

    :goto_36
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_3d

    iget-object v10, v0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    goto :goto_3f

    :cond_3d
    move-object/from16 v10, p9

    :goto_3f
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_46

    iget-boolean v1, v0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    goto :goto_48

    :cond_46
    move/from16 v1, p10

    :goto_48
    move p1, v2

    move p2, v3

    move-wide p3, v4

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/stripe/android/PaymentSessionData;->copy(ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;Z)Lcom/stripe/android/PaymentSessionData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    return-wide v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    return-wide v0
.end method

.method public final component5()Lcom/stripe/android/model/ShippingInformation;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    return-object v0
.end method

.method public final component6()Lcom/stripe/android/model/ShippingMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    return-object v0
.end method

.method public final component7()Lcom/stripe/android/model/PaymentMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    return-object v0
.end method

.method public final component8()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    return v0
.end method

.method public final copy(ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;Z)Lcom/stripe/android/PaymentSessionData;
    .registers 23
    .param p7    # Lcom/stripe/android/model/ShippingInformation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/stripe/android/model/ShippingMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v11, Lcom/stripe/android/PaymentSessionData;

    move-object v0, v11

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/stripe/android/PaymentSessionData;-><init>(ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;Z)V

    return-object v11
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_4b

    instance-of v0, p1, Lcom/stripe/android/PaymentSessionData;

    if-eqz v0, :cond_49

    check-cast p1, Lcom/stripe/android/PaymentSessionData;

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    if-ne v0, v1, :cond_49

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    if-ne v0, v1, :cond_49

    iget-wide v0, p0, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    iget-wide v2, p1, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    iget-wide v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    iget-wide v2, p1, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    iget-object v1, p1, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    iget-boolean p1, p1, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    if-ne v0, p1, :cond_49

    goto :goto_4b

    :cond_49
    const/4 p1, 0x0

    return p1

    :cond_4b
    :goto_4b
    const/4 p1, 0x1

    return p1
.end method

.method public final getCartTotal()J
    .registers 3

    .line 21
    iget-wide v0, p0, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    return-wide v0
.end method

.method public final getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    return-object v0
.end method

.method public final getShippingInformation()Lcom/stripe/android/model/ShippingInformation;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    return-object v0
.end method

.method public final getShippingMethod()Lcom/stripe/android/model/ShippingMethod;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    return-object v0
.end method

.method public final getShippingTotal()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    return-wide v0
.end method

.method public final getUseGooglePay()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    if-eqz v2, :cond_d

    move v2, v1

    :cond_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    invoke-static {v2, v3}, L$r8$java8methods$utility$Long$hashCode$IJ;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    invoke-static {v2, v3}, L$r8$java8methods$utility$Long$hashCode$IJ;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3a

    :cond_39
    move v2, v3

    :goto_3a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_45
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    if-eqz v2, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v2

    :goto_4e
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPaymentReadyToCharge()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    if-eqz v0, :cond_19

    :cond_8
    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    if-eqz v0, :cond_19

    :cond_10
    iget-boolean v0, p0, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentSessionData(isShippingInfoRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShippingMethodRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cartTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", shippingTotal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", shippingInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", useGooglePay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    iget-boolean p2, p0, Lcom/stripe/android/PaymentSessionData;->isShippingInfoRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/stripe/android/PaymentSessionData;->isShippingMethodRequired:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/stripe/android/PaymentSessionData;->cartTotal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/stripe/android/PaymentSessionData;->shippingTotal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/stripe/android/PaymentSessionData;->shippingInformation:Lcom/stripe/android/model/ShippingInformation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_26

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    iget-object p2, p0, Lcom/stripe/android/PaymentSessionData;->shippingMethod:Lcom/stripe/android/model/ShippingMethod;

    if-eqz p2, :cond_34

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_37

    :cond_34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_37
    iget-object p2, p0, Lcom/stripe/android/PaymentSessionData;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    if-eqz p2, :cond_42

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_45

    :cond_42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_45
    iget-boolean p2, p0, Lcom/stripe/android/PaymentSessionData;->useGooglePay:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
