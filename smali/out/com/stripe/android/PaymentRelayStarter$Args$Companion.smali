.class public final Lcom/stripe/android/PaymentRelayStarter$Args$Companion;
.super Ljava/lang/Object;
.source "PaymentRelayStarter.kt"

# interfaces
.implements Lkotlinx/parcelize/Parceler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentRelayStarter$Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/parcelize/Parceler<",
        "Lcom/stripe/android/PaymentRelayStarter$Args;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0015\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\tJ!\u0010\u0004\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0002\u0008\tJ!\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0002\u0008\tJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u001c\u0010\u0013\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/android/PaymentRelayStarter$Args$Companion;",
        "Lkotlinx/parcelize/Parceler;",
        "Lcom/stripe/android/PaymentRelayStarter$Args;",
        "()V",
        "create",
        "parcel",
        "Landroid/os/Parcel;",
        "exception",
        "Lcom/stripe/android/exception/StripeException;",
        "create$stripe_release",
        "source",
        "Lcom/stripe/android/model/Source;",
        "stripeAccountId",
        "",
        "stripeIntent",
        "Lcom/stripe/android/model/StripeIntent;",
        "readStripeIntent",
        "writeStripeIntent",
        "",
        "write",
        "flags",
        "",
        "StripeIntentType",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$stripe_release$default(Lcom/stripe/android/PaymentRelayStarter$Args$Companion;Lcom/stripe/android/model/Source;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/PaymentRelayStarter$Args;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 58
    check-cast p2, Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->create$stripe_release(Lcom/stripe/android/model/Source;Ljava/lang/String;)Lcom/stripe/android/PaymentRelayStarter$Args;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$stripe_release$default(Lcom/stripe/android/PaymentRelayStarter$Args$Companion;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/PaymentRelayStarter$Args;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 53
    check-cast p2, Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->create$stripe_release(Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;)Lcom/stripe/android/PaymentRelayStarter$Args;

    move-result-object p0

    return-object p0
.end method

.method private final readStripeIntent(Landroid/os/Parcel;)Lcom/stripe/android/model/StripeIntent;
    .registers 4

    .line 84
    invoke-static {}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;->values()[Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/stripe/android/PaymentRelayStarter$Args$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 p1, 0x0

    goto :goto_33

    .line 88
    :cond_1a
    const-class v0, Lcom/stripe/android/model/SetupIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/StripeIntent;

    goto :goto_33

    .line 86
    :cond_27
    const-class v0, Lcom/stripe/android/model/PaymentIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/StripeIntent;

    :goto_33
    return-object p1
.end method

.method private final writeStripeIntent(Landroid/os/Parcel;Lcom/stripe/android/model/StripeIntent;)V
    .registers 4

    .line 95
    instance-of v0, p2, Lcom/stripe/android/model/PaymentIntent;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;->PaymentIntent:Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;

    goto :goto_10

    .line 96
    :cond_7
    instance-of v0, p2, Lcom/stripe/android/model/SetupIntent;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;->SetupIntent:Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;

    goto :goto_10

    .line 97
    :cond_e
    sget-object v0, Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;->None:Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;

    .line 99
    :goto_10
    invoke-virtual {v0}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion$StripeIntentType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p2, :cond_1f

    .line 101
    check-cast p2, Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public create(Landroid/os/Parcel;)Lcom/stripe/android/PaymentRelayStarter$Args;
    .registers 7
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/stripe/android/PaymentRelayStarter$Args;

    .line 69
    move-object v1, p0

    check-cast v1, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;

    invoke-direct {v1, p1}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->readStripeIntent(Landroid/os/Parcel;)Lcom/stripe/android/model/StripeIntent;

    move-result-object v1

    .line 70
    const-class v2, Lcom/stripe/android/model/Source;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/stripe/android/model/Source;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v3

    instance-of v4, v3, Lcom/stripe/android/exception/StripeException;

    if-nez v4, :cond_23

    const/4 v3, 0x0

    :cond_23
    check-cast v3, Lcom/stripe/android/exception/StripeException;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/stripe/android/PaymentRelayStarter$Args;-><init>(Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/model/Source;Lcom/stripe/android/exception/StripeException;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic create(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->create(Landroid/os/Parcel;)Lcom/stripe/android/PaymentRelayStarter$Args;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic create$stripe_release(Lcom/stripe/android/exception/StripeException;)Lcom/stripe/android/PaymentRelayStarter$Args;
    .registers 10

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/stripe/android/PaymentRelayStarter$Args;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/PaymentRelayStarter$Args;-><init>(Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/model/Source;Lcom/stripe/android/exception/StripeException;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic create$stripe_release(Lcom/stripe/android/model/Source;Ljava/lang/String;)Lcom/stripe/android/PaymentRelayStarter$Args;
    .registers 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/stripe/android/PaymentRelayStarter$Args;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/PaymentRelayStarter$Args;-><init>(Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/model/Source;Lcom/stripe/android/exception/StripeException;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic create$stripe_release(Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;)Lcom/stripe/android/PaymentRelayStarter$Args;
    .registers 11

    const-string v0, "stripeIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/stripe/android/PaymentRelayStarter$Args;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/PaymentRelayStarter$Args;-><init>(Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/model/Source;Lcom/stripe/android/exception/StripeException;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public newArray(I)[Lcom/stripe/android/PaymentRelayStarter$Args;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 51
    invoke-static {p0, p1}, Lkotlinx/parcelize/Parceler$DefaultImpls;->newArray(Lkotlinx/parcelize/Parceler;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/stripe/android/PaymentRelayStarter$Args;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->newArray(I)[Lcom/stripe/android/PaymentRelayStarter$Args;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/stripe/android/PaymentRelayStarter$Args;Landroid/os/Parcel;I)V
    .registers 5
    .param p1    # Lcom/stripe/android/PaymentRelayStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p3, "$this$write"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "parcel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    move-object p3, p0

    check-cast p3, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;

    invoke-virtual {p1}, Lcom/stripe/android/PaymentRelayStarter$Args;->getStripeIntent()Lcom/stripe/android/model/StripeIntent;

    move-result-object v0

    invoke-direct {p3, p2, v0}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->writeStripeIntent(Landroid/os/Parcel;Lcom/stripe/android/model/StripeIntent;)V

    .line 78
    invoke-virtual {p1}, Lcom/stripe/android/PaymentRelayStarter$Args;->getSource()Lcom/stripe/android/model/Source;

    move-result-object p3

    check-cast p3, Landroid/os/Parcelable;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    invoke-virtual {p1}, Lcom/stripe/android/PaymentRelayStarter$Args;->getException()Lcom/stripe/android/exception/StripeException;

    move-result-object p3

    check-cast p3, Ljava/io/Serializable;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 80
    invoke-virtual {p1}, Lcom/stripe/android/PaymentRelayStarter$Args;->getStripeAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic write(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 4

    .line 51
    check-cast p1, Lcom/stripe/android/PaymentRelayStarter$Args;

    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/android/PaymentRelayStarter$Args$Companion;->write(Lcom/stripe/android/PaymentRelayStarter$Args;Landroid/os/Parcel;I)V

    return-void
.end method
