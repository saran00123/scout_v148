.class public final Lcom/stripe/android/model/CustomerSource;
.super Ljava/lang/Object;
.source "CustomerSource.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeModel;
.implements Lcom/stripe/android/model/StripePaymentSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/CustomerSource$Creator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\t\u0010\u0013\u001a\u00020\u0002H\u00c2\u0003J\u0013\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u0006H\u00d6\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016H\u00d6\u0001R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/android/model/CustomerSource;",
        "Lcom/stripe/android/model/StripeModel;",
        "Lcom/stripe/android/model/StripePaymentSource;",
        "stripePaymentSource",
        "(Lcom/stripe/android/model/StripePaymentSource;)V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "sourceType",
        "getSourceType",
        "tokenizationMethod",
        "Lcom/stripe/android/model/TokenizationMethod;",
        "getTokenizationMethod",
        "()Lcom/stripe/android/model/TokenizationMethod;",
        "asCard",
        "Lcom/stripe/android/model/Card;",
        "asSource",
        "Lcom/stripe/android/model/Source;",
        "component1",
        "copy",
        "describeContents",
        "",
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
            "Lcom/stripe/android/model/CustomerSource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/model/CustomerSource$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/CustomerSource$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/CustomerSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/model/StripePaymentSource;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/StripePaymentSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stripePaymentSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    return-void
.end method

.method private final component1()Lcom/stripe/android/model/StripePaymentSource;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/CustomerSource;Lcom/stripe/android/model/StripePaymentSource;ILjava/lang/Object;)Lcom/stripe/android/model/CustomerSource;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/stripe/android/model/CustomerSource;->copy(Lcom/stripe/android/model/StripePaymentSource;)Lcom/stripe/android/model/CustomerSource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asCard()Lcom/stripe/android/model/Card;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    instance-of v1, v0, Lcom/stripe/android/model/Card;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :cond_7
    check-cast v0, Lcom/stripe/android/model/Card;

    return-object v0
.end method

.method public final asSource()Lcom/stripe/android/model/Source;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    instance-of v1, v0, Lcom/stripe/android/model/Source;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :cond_7
    check-cast v0, Lcom/stripe/android/model/Source;

    return-object v0
.end method

.method public final copy(Lcom/stripe/android/model/StripePaymentSource;)Lcom/stripe/android/model/CustomerSource;
    .registers 3
    .param p1    # Lcom/stripe/android/model/StripePaymentSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "stripePaymentSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/model/CustomerSource;

    invoke-direct {v0, p1}, Lcom/stripe/android/model/CustomerSource;-><init>(Lcom/stripe/android/model/StripePaymentSource;)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/stripe/android/model/CustomerSource;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/stripe/android/model/CustomerSource;

    iget-object v0, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    iget-object p1, p1, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    invoke-interface {v0}, Lcom/stripe/android/model/StripePaymentSource;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSourceType()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    .line 31
    instance-of v1, v0, Lcom/stripe/android/model/Card;

    if-eqz v1, :cond_9

    const-string v0, "card"

    goto :goto_16

    .line 32
    :cond_9
    instance-of v1, v0, Lcom/stripe/android/model/Source;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/stripe/android/model/Source;

    invoke-virtual {v0}, Lcom/stripe/android/model/Source;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, "unknown"

    :goto_16
    return-object v0
.end method

.method public final getTokenizationMethod()Lcom/stripe/android/model/TokenizationMethod;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/stripe/android/model/CustomerSource;->asSource()Lcom/stripe/android/model/Source;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 19
    invoke-virtual {v0}, Lcom/stripe/android/model/Source;->getSourceTypeModel()Lcom/stripe/android/model/SourceTypeModel;

    move-result-object v2

    .line 20
    instance-of v2, v2, Lcom/stripe/android/model/SourceTypeModel$Card;

    if-eqz v2, :cond_1a

    .line 21
    invoke-virtual {v0}, Lcom/stripe/android/model/Source;->getSourceTypeModel()Lcom/stripe/android/model/SourceTypeModel;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/model/SourceTypeModel$Card;

    invoke-virtual {v0}, Lcom/stripe/android/model/SourceTypeModel$Card;->getTokenizationMethod()Lcom/stripe/android/model/TokenizationMethod;

    move-result-object v0

    goto :goto_1b

    :cond_1a
    move-object v0, v1

    :goto_1b
    if-eqz v0, :cond_1f

    move-object v1, v0

    goto :goto_29

    .line 25
    :cond_1f
    invoke-virtual {p0}, Lcom/stripe/android/model/CustomerSource;->asCard()Lcom/stripe/android/model/Card;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/stripe/android/model/Card;->getTokenizationMethod()Lcom/stripe/android/model/TokenizationMethod;

    move-result-object v1

    :cond_29
    :goto_29
    return-object v1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomerSource(stripePaymentSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/model/CustomerSource;->stripePaymentSource:Lcom/stripe/android/model/StripePaymentSource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
