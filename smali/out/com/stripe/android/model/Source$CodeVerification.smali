.class public final Lcom/stripe/android/model/Source$CodeVerification;
.super Ljava/lang/Object;
.source "Source.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodeVerification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/Source$CodeVerification$Creator;,
        Lcom/stripe/android/model/Source$CodeVerification$Status;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u001bB\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\t\u0010\u000e\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/android/model/Source$CodeVerification;",
        "Lcom/stripe/android/model/StripeModel;",
        "attemptsRemaining",
        "",
        "status",
        "Lcom/stripe/android/model/Source$CodeVerification$Status;",
        "(ILcom/stripe/android/model/Source$CodeVerification$Status;)V",
        "getAttemptsRemaining",
        "()I",
        "getStatus",
        "()Lcom/stripe/android/model/Source$CodeVerification$Status;",
        "component1",
        "component2",
        "copy",
        "describeContents",
        "equals",
        "",
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
        "Status",
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
            "Lcom/stripe/android/model/Source$CodeVerification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attemptsRemaining:I

.field private final status:Lcom/stripe/android/model/Source$CodeVerification$Status;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/stripe/android/model/Source$CodeVerification$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/Source$CodeVerification$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/Source$CodeVerification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/stripe/android/model/Source$CodeVerification$Status;)V
    .registers 3
    .param p2    # Lcom/stripe/android/model/Source$CodeVerification$Status;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    iput-object p2, p0, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/model/Source$CodeVerification;ILcom/stripe/android/model/Source$CodeVerification$Status;ILjava/lang/Object;)Lcom/stripe/android/model/Source$CodeVerification;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/model/Source$CodeVerification;->copy(ILcom/stripe/android/model/Source$CodeVerification$Status;)Lcom/stripe/android/model/Source$CodeVerification;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    return v0
.end method

.method public final component2()Lcom/stripe/android/model/Source$CodeVerification$Status;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

    return-object v0
.end method

.method public final copy(ILcom/stripe/android/model/Source$CodeVerification$Status;)Lcom/stripe/android/model/Source$CodeVerification;
    .registers 4
    .param p2    # Lcom/stripe/android/model/Source$CodeVerification$Status;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/stripe/android/model/Source$CodeVerification;

    invoke-direct {v0, p1, p2}, Lcom/stripe/android/model/Source$CodeVerification;-><init>(ILcom/stripe/android/model/Source$CodeVerification$Status;)V

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

    if-eq p0, p1, :cond_1b

    instance-of v0, p1, Lcom/stripe/android/model/Source$CodeVerification;

    if-eqz v0, :cond_19

    check-cast p1, Lcom/stripe/android/model/Source$CodeVerification;

    iget v0, p0, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    iget v1, p1, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

    iget-object p1, p1, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    :goto_1b
    const/4 p1, 0x1

    return p1
.end method

.method public final getAttemptsRemaining()I
    .registers 2

    .line 285
    iget v0, p0, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    return v0
.end method

.method public final getStatus()Lcom/stripe/android/model/Source$CodeVerification$Status;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    invoke-static {v0}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CodeVerification(attemptsRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

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

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/stripe/android/model/Source$CodeVerification;->attemptsRemaining:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/stripe/android/model/Source$CodeVerification;->status:Lcom/stripe/android/model/Source$CodeVerification$Status;

    if-eqz p2, :cond_1a

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1e

    :cond_1a
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1e
    return-void
.end method
