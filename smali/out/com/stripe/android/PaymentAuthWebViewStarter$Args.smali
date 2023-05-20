.class public final Lcom/stripe/android/PaymentAuthWebViewStarter$Args;
.super Ljava/lang/Object;
.source "PaymentAuthWebViewStarter.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentAuthWebViewStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentAuthWebViewStarter$Args$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0081\u0008\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00c6\u0003J\t\u0010 \u001a\u00020\u0007H\u00c6\u0003J_\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007H\u00c6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\u0013\u0010$\u001a\u00020\u00072\u0008\u0010%\u001a\u0004\u0018\u00010&H\u00d6\u0003J\t\u0010\'\u001a\u00020#H\u00d6\u0001J\t\u0010(\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020#H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000f\u00a8\u0006."
    }
    d2 = {
        "Lcom/stripe/android/PaymentAuthWebViewStarter$Args;",
        "Landroid/os/Parcelable;",
        "clientSecret",
        "",
        "url",
        "returnUrl",
        "enableLogging",
        "",
        "toolbarCustomization",
        "Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;",
        "stripeAccountId",
        "shouldCancelSource",
        "shouldCancelIntentOnUserNavigation",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZ)V",
        "getClientSecret",
        "()Ljava/lang/String;",
        "getEnableLogging",
        "()Z",
        "getReturnUrl",
        "getShouldCancelIntentOnUserNavigation",
        "getShouldCancelSource",
        "getStripeAccountId",
        "getToolbarCustomization",
        "()Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;",
        "getUrl",
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
            "Lcom/stripe/android/PaymentAuthWebViewStarter$Args;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final clientSecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final enableLogging:Z

.field private final returnUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final shouldCancelIntentOnUserNavigation:Z

.field private final shouldCancelSource:Z

.field private final stripeAccountId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args$Creator;

    invoke-direct {v0}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZ)V
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    iput-object p5, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    iput-object p6, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    iput-boolean p8, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 23

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 31
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v6, v1

    goto :goto_d

    :cond_c
    move-object v6, p3

    :goto_d
    and-int/lit8 v1, v0, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    move v7, v3

    goto :goto_16

    :cond_14
    move/from16 v7, p4

    :goto_16
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1f

    .line 33
    move-object v1, v2

    check-cast v1, Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    move-object v8, v1

    goto :goto_21

    :cond_1f
    move-object/from16 v8, p5

    :goto_21
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2a

    .line 34
    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    goto :goto_2c

    :cond_2a
    move-object/from16 v9, p6

    :goto_2c
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_32

    move v10, v3

    goto :goto_34

    :cond_32
    move/from16 v10, p7

    :goto_34
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    move v11, v0

    goto :goto_3d

    :cond_3b
    move/from16 v11, p8

    :goto_3d
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 45
    invoke-direct/range {v3 .. v11}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/PaymentAuthWebViewStarter$Args;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZILjava/lang/Object;)Lcom/stripe/android/PaymentAuthWebViewStarter$Args;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-boolean v5, v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    goto :goto_23

    :cond_22
    move v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-boolean v8, v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    goto :goto_3c

    :cond_3a
    move/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-boolean v1, v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

    goto :goto_45

    :cond_43
    move/from16 v1, p8

    :goto_45
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move p4, v5

    move-object p5, v6

    move-object p6, v7

    move/from16 p7, v8

    move/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZ)Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    return v0
.end method

.method public final component5()Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    return v0
.end method

.method public final component8()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZ)Lcom/stripe/android/PaymentAuthWebViewStarter$Args;
    .registers 19
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "clientSecret"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    move-object v1, v0

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;Ljava/lang/String;ZZ)V

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

    if-eq p0, p1, :cond_4f

    instance-of v0, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    if-eqz v0, :cond_4d

    check-cast p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    iget-object v1, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    if-ne v0, v1, :cond_4d

    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

    iget-boolean p1, p1, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

    if-ne v0, p1, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 p1, 0x0

    return p1

    :cond_4f
    :goto_4f
    const/4 p1, 0x1

    return p1
.end method

.method public final getClientSecret()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableLogging()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    return v0
.end method

.method public final getReturnUrl()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getShouldCancelIntentOnUserNavigation()Z
    .registers 2

    .line 45
    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

    return v0
.end method

.method public final getShouldCancelSource()Z
    .registers 2

    .line 35
    iget-boolean v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    return v0
.end method

.method public final getStripeAccountId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getToolbarCustomization()Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    move v2, v1

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2d

    move v2, v3

    :cond_2d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3a

    :cond_39
    move v2, v1

    :goto_3a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_45
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    if-eqz v1, :cond_4d

    move v1, v3

    :cond_4d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

    if-eqz v1, :cond_55

    move v1, v3

    :cond_55
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Args(clientSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", returnUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enableLogging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", toolbarCustomization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stripeAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldCancelSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldCancelIntentOnUserNavigation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

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

    iget-object p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->clientSecret:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->returnUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->enableLogging:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->toolbarCustomization:Lcom/stripe/android/stripe3ds2/init/ui/StripeToolbarCustomization;

    const/4 v0, 0x0

    if-eqz p2, :cond_26

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    :cond_26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29
    iget-object p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->stripeAccountId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelSource:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/stripe/android/PaymentAuthWebViewStarter$Args;->shouldCancelIntentOnUserNavigation:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
