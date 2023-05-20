.class public final Lcom/stripe/android/PaymentController$Result;
.super Ljava/lang/Object;
.source "PaymentController.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentController$Result$Creator;,
        Lcom/stripe/android/PaymentController$Result$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 72\u00020\u0001:\u00017BW\u0008\u0000\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008\u001cJ\u000e\u0010\u001d\u001a\u00020\u0005H\u00c0\u0003\u00a2\u0006\u0002\u0008\u001eJ\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0007H\u00c0\u0003\u00a2\u0006\u0002\u0008 J\u000e\u0010!\u001a\u00020\tH\u00c0\u0003\u00a2\u0006\u0002\u0008\"J\u0010\u0010#\u001a\u0004\u0018\u00010\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008$J\u0010\u0010%\u001a\u0004\u0018\u00010\u000cH\u00c0\u0003\u00a2\u0006\u0002\u0008&J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008(JY\u0010)\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\t\u0010*\u001a\u00020\u0005H\u00d6\u0001J\u0013\u0010+\u001a\u00020\t2\u0008\u0010,\u001a\u0004\u0018\u00010-H\u00d6\u0003J\t\u0010.\u001a\u00020\u0005H\u00d6\u0001J\u0006\u0010/\u001a\u000200J\t\u00101\u001a\u00020\u0003H\u00d6\u0001J\u0019\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\u0005H\u00d6\u0001R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0008\u001a\u00020\tX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0010R\u0016\u0010\r\u001a\u0004\u0018\u00010\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\u00a8\u00068"
    }
    d2 = {
        "Lcom/stripe/android/PaymentController$Result;",
        "Landroid/os/Parcelable;",
        "clientSecret",
        "",
        "flowOutcome",
        "",
        "exception",
        "Lcom/stripe/android/exception/StripeException;",
        "shouldCancelSource",
        "",
        "sourceId",
        "source",
        "Lcom/stripe/android/model/Source;",
        "stripeAccountId",
        "(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;)V",
        "getClientSecret$stripe_release",
        "()Ljava/lang/String;",
        "getException$stripe_release",
        "()Lcom/stripe/android/exception/StripeException;",
        "getFlowOutcome$stripe_release",
        "()I",
        "getShouldCancelSource$stripe_release",
        "()Z",
        "getSource$stripe_release",
        "()Lcom/stripe/android/model/Source;",
        "getSourceId$stripe_release",
        "getStripeAccountId$stripe_release",
        "component1",
        "component1$stripe_release",
        "component2",
        "component2$stripe_release",
        "component3",
        "component3$stripe_release",
        "component4",
        "component4$stripe_release",
        "component5",
        "component5$stripe_release",
        "component6",
        "component6$stripe_release",
        "component7",
        "component7$stripe_release",
        "copy",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toBundle",
        "Landroid/os/Bundle;",
        "toString",
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
            "Lcom/stripe/android/PaymentController$Result;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/android/PaymentController$Result$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final EXTRA:Ljava/lang/String; = "extra_args"


# instance fields
.field private final clientSecret:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final exception:Lcom/stripe/android/exception/StripeException;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final flowOutcome:I

.field private final shouldCancelSource:Z

.field private final source:Lcom/stripe/android/model/Source;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sourceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final stripeAccountId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/PaymentController$Result$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/PaymentController$Result$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/PaymentController$Result;->Companion:Lcom/stripe/android/PaymentController$Result$Companion;

    new-instance v0, Lcom/stripe/android/PaymentController$Result$Creator;

    invoke-direct {v0}, Lcom/stripe/android/PaymentController$Result$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/PaymentController$Result;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/android/PaymentController$Result;-><init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/exception/StripeException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/model/Source;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/PaymentController$Result;->clientSecret:Ljava/lang/String;

    iput p2, p0, Lcom/stripe/android/PaymentController$Result;->flowOutcome:I

    iput-object p3, p0, Lcom/stripe/android/PaymentController$Result;->exception:Lcom/stripe/android/exception/StripeException;

    iput-boolean p4, p0, Lcom/stripe/android/PaymentController$Result;->shouldCancelSource:Z

    iput-object p5, p0, Lcom/stripe/android/PaymentController$Result;->sourceId:Ljava/lang/String;

    iput-object p6, p0, Lcom/stripe/android/PaymentController$Result;->source:Lcom/stripe/android/model/Source;

    iput-object p7, p0, Lcom/stripe/android/PaymentController$Result;->stripeAccountId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 15

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_8

    .line 122
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    :cond_8
    and-int/lit8 p9, p8, 0x2

    const/4 v1, 0x0

    if-eqz p9, :cond_f

    move p9, v1

    goto :goto_10

    :cond_f
    move p9, p2

    :goto_10
    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_17

    .line 124
    move-object p3, v0

    check-cast p3, Lcom/stripe/android/exception/StripeException;

    :cond_17
    move-object v2, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, p4

    :goto_1e
    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_25

    .line 126
    move-object p5, v0

    check-cast p5, Ljava/lang/String;

    :cond_25
    move-object v3, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_2d

    .line 127
    move-object p6, v0

    check-cast p6, Lcom/stripe/android/model/Source;

    :cond_2d
    move-object v4, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_35

    .line 128
    move-object p7, v0

    check-cast p7, Ljava/lang/String;

    :cond_35
    move-object v0, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move-object p5, v2

    move p6, v1

    move-object p7, v3

    move-object p8, v4

    move-object p9, v0

    invoke-direct/range {p2 .. p9}, Lcom/stripe/android/PaymentController$Result;-><init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/PaymentController$Result;Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/PaymentController$Result;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/stripe/android/PaymentController$Result;->clientSecret:Ljava/lang/String;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lcom/stripe/android/PaymentController$Result;->flowOutcome:I

    :cond_c
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/stripe/android/PaymentController$Result;->exception:Lcom/stripe/android/exception/StripeException;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget-boolean p4, p0, Lcom/stripe/android/PaymentController$Result;->shouldCancelSource:Z

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/stripe/android/PaymentController$Result;->sourceId:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/stripe/android/PaymentController$Result;->source:Lcom/stripe/android/model/Source;

    :cond_28
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget-object p7, p0, Lcom/stripe/android/PaymentController$Result;->stripeAccountId:Ljava/lang/String;

    :cond_2f
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move-object p5, v0

    move p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/stripe/android/PaymentController$Result;->copy(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;)Lcom/stripe/android/PaymentController$Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final component2$stripe_release()I
    .registers 2

    iget v0, p0, Lcom/stripe/android/PaymentController$Result;->flowOutcome:I

    return v0
.end method

.method public final component3$stripe_release()Lcom/stripe/android/exception/StripeException;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->exception:Lcom/stripe/android/exception/StripeException;

    return-object v0
.end method

.method public final component4$stripe_release()Z
    .registers 2

    iget-boolean v0, p0, Lcom/stripe/android/PaymentController$Result;->shouldCancelSource:Z

    return v0
.end method

.method public final component5$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component6$stripe_release()Lcom/stripe/android/model/Source;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->source:Lcom/stripe/android/model/Source;

    return-object v0
.end method

.method public final component7$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;)Lcom/stripe/android/PaymentController$Result;
    .registers 17
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/exception/StripeException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/model/Source;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Lcom/stripe/android/PaymentController$Result;

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/stripe/android/PaymentController$Result;-><init>(Ljava/lang/String;ILcom/stripe/android/exception/StripeException;ZLjava/lang/String;Lcom/stripe/android/model/Source;Ljava/lang/String;)V

    return-object v8
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

    if-eq p0, p1, :cond_49

    instance-of v0, p1, Lcom/stripe/android/PaymentController$Result;

    if-eqz v0, :cond_47

    check-cast p1, Lcom/stripe/android/PaymentController$Result;

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->clientSecret:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/PaymentController$Result;->clientSecret:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/stripe/android/PaymentController$Result;->flowOutcome:I

    iget v1, p1, Lcom/stripe/android/PaymentController$Result;->flowOutcome:I

    if-ne v0, v1, :cond_47

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->exception:Lcom/stripe/android/exception/StripeException;

    iget-object v1, p1, Lcom/stripe/android/PaymentController$Result;->exception:Lcom/stripe/android/exception/StripeException;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/stripe/android/PaymentController$Result;->shouldCancelSource:Z

    iget-boolean v1, p1, Lcom/stripe/android/PaymentController$Result;->shouldCancelSource:Z

    if-ne v0, v1, :cond_47

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->sourceId:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/PaymentController$Result;->sourceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->source:Lcom/stripe/android/model/Source;

    iget-object v1, p1, Lcom/stripe/android/PaymentController$Result;->source:Lcom/stripe/android/model/Source;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->stripeAccountId:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/android/PaymentController$Result;->stripeAccountId:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_49

    :cond_47
    const/4 p1, 0x0

    return p1

    :cond_49
    :goto_49
    const/4 p1, 0x1

    return p1
.end method

.method public final getClientSecret$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getException$stripe_release()Lcom/stripe/android/exception/StripeException;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->exception:Lcom/stripe/android/exception/StripeException;

    return-object v0
.end method

.method public final getFlowOutcome$stripe_release()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/stripe/android/PaymentController$Result;->flowOutcome:I

    return v0
.end method

.method public final getShouldCancelSource$stripe_release()Z
    .registers 2

    .line 125
    iget-boolean v0, p0, Lcom/stripe/android/PaymentController$Result;->shouldCancelSource:Z

    return v0
.end method

.method public final getSource$stripe_release()Lcom/stripe/android/model/Source;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->source:Lcom/stripe/android/model/Source;

    return-object v0
.end method

.method public final getSourceId$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStripeAccountId$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/stripe/android/PaymentController$Result;->clientSecret:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/stripe/android/PaymentController$Result;->flowOutcome:I

    invoke-static {v2}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentController$Result;->exception:Lcom/stripe/android/exception/StripeException;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/android/PaymentController$Result;->shouldCancelSource:Z

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    :cond_28
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentController$Result;->sourceId:Ljava/lang/String;

    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_35

    :cond_34
    move v2, v1

    :goto_35
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentController$Result;->source:Lcom/stripe/android/model/Source;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/android/PaymentController$Result;->stripeAccountId:Ljava/lang/String;

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4d
    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic toBundle()Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x1

    .line 131
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "extra_args"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result(clientSecret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentController$Result;->clientSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flowOutcome="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/stripe/android/PaymentController$Result;->flowOutcome:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentController$Result;->exception:Lcom/stripe/android/exception/StripeException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldCancelSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/android/PaymentController$Result;->shouldCancelSource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentController$Result;->sourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentController$Result;->source:Lcom/stripe/android/model/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stripeAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/PaymentController$Result;->stripeAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    sget-object v0, Lcom/stripe/android/PaymentController$Result;->Companion:Lcom/stripe/android/PaymentController$Result$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/android/PaymentController$Result$Companion;->write(Lcom/stripe/android/PaymentController$Result;Landroid/os/Parcel;I)V

    return-void
.end method
