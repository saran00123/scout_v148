.class public final Lcom/stripe/android/model/PaymentMethod$CardPresent;
.super Ljava/lang/Object;
.source "PaymentMethod.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardPresent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/PaymentMethod$CardPresent$Creator;,
        Lcom/stripe/android/model/PaymentMethod$CardPresent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0011\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\t\u0010\u0007\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u00d6\u0003J\t\u0010\u000c\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0008H\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentMethod$CardPresent;",
        "Lcom/stripe/android/model/StripeModel;",
        "ignore",
        "",
        "(Z)V",
        "component1",
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
        "Companion",
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
            "Lcom/stripe/android/model/PaymentMethod$CardPresent;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/model/PaymentMethod$CardPresent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final synthetic EMPTY:Lcom/stripe/android/model/PaymentMethod$CardPresent;


# instance fields
.field private final ignore:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/stripe/android/model/PaymentMethod$CardPresent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/PaymentMethod$CardPresent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->Companion:Lcom/stripe/android/model/PaymentMethod$CardPresent$Companion;

    .line 576
    new-instance v0, Lcom/stripe/android/model/PaymentMethod$CardPresent;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/stripe/android/model/PaymentMethod$CardPresent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->EMPTY:Lcom/stripe/android/model/PaymentMethod$CardPresent;

    new-instance v0, Lcom/stripe/android/model/PaymentMethod$CardPresent$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/PaymentMethod$CardPresent$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/stripe/android/model/PaymentMethod$CardPresent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->ignore:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    move p1, p3

    .line 572
    :cond_5
    invoke-direct {p0, p1}, Lcom/stripe/android/model/PaymentMethod$CardPresent;-><init>(Z)V

    return-void
.end method

.method public static final synthetic access$getEMPTY$cp()Lcom/stripe/android/model/PaymentMethod$CardPresent;
    .registers 1

    .line 571
    sget-object v0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->EMPTY:Lcom/stripe/android/model/PaymentMethod$CardPresent;

    return-object v0
.end method

.method private final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->ignore:Z

    return v0
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/PaymentMethod$CardPresent;ZILjava/lang/Object;)Lcom/stripe/android/model/PaymentMethod$CardPresent;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-boolean p1, p0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->ignore:Z

    :cond_6
    invoke-virtual {p0, p1}, Lcom/stripe/android/model/PaymentMethod$CardPresent;->copy(Z)Lcom/stripe/android/model/PaymentMethod$CardPresent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Z)Lcom/stripe/android/model/PaymentMethod$CardPresent;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/stripe/android/model/PaymentMethod$CardPresent;

    invoke-direct {v0, p1}, Lcom/stripe/android/model/PaymentMethod$CardPresent;-><init>(Z)V

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

    if-eq p0, p1, :cond_11

    instance-of v0, p1, Lcom/stripe/android/model/PaymentMethod$CardPresent;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/stripe/android/model/PaymentMethod$CardPresent;

    iget-boolean v0, p0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->ignore:Z

    iget-boolean p1, p1, Lcom/stripe/android/model/PaymentMethod$CardPresent;->ignore:Z

    if-ne v0, p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->ignore:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardPresent(ignore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->ignore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/stripe/android/model/PaymentMethod$CardPresent;->ignore:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
