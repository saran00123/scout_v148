.class public abstract Lcom/stripe/android/exception/StripeException;
.super Ljava/lang/Exception;
.source "StripeException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/exception/StripeException$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStripeException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StripeException.kt\ncom/stripe/android/exception/StripeException\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0006\u0008&\u0018\u0000 \u001b2\u00060\u0001j\u0002`\u0002:\u0001\u001bB?\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u000cJ\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0008H\u0016J\u0008\u0010\u0018\u001a\u00020\u0006H\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0000H\u0002R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/android/exception/StripeException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "stripeError",
        "Lcom/stripe/android/StripeError;",
        "requestId",
        "",
        "statusCode",
        "",
        "cause",
        "",
        "message",
        "(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V",
        "getRequestId",
        "()Ljava/lang/String;",
        "getStatusCode",
        "()I",
        "getStripeError",
        "()Lcom/stripe/android/StripeError;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "typedEquals",
        "ex",
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


# static fields
.field public static final Companion:Lcom/stripe/android/exception/StripeException$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final requestId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final statusCode:I

.field private final stripeError:Lcom/stripe/android/StripeError;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/exception/StripeException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/exception/StripeException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/exception/StripeException;->Companion:Lcom/stripe/android/exception/StripeException$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/android/exception/StripeException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .registers 6
    .param p1    # Lcom/stripe/android/StripeError;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p5, p4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/stripe/android/exception/StripeException;->stripeError:Lcom/stripe/android/StripeError;

    iput-object p2, p0, Lcom/stripe/android/exception/StripeException;->requestId:Ljava/lang/String;

    iput p3, p0, Lcom/stripe/android/exception/StripeException;->statusCode:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 11

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_8

    .line 12
    move-object p1, v0

    check-cast p1, Lcom/stripe/android/StripeError;

    :cond_8
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_f

    .line 13
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_f
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_15

    const/4 p3, 0x0

    :cond_15
    move v1, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1d

    .line 15
    move-object p4, v0

    check-cast p4, Ljava/lang/Throwable;

    :cond_1d
    move-object v2, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2b

    if-eqz p1, :cond_2a

    .line 16
    invoke-virtual {p1}, Lcom/stripe/android/StripeError;->getMessage()Ljava/lang/String;

    move-result-object p2

    move-object p5, p2

    goto :goto_2b

    :cond_2a
    move-object p5, v0

    :cond_2b
    :goto_2b
    move-object v0, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v1

    move-object p6, v2

    move-object p7, v0

    invoke-direct/range {p2 .. p7}, Lcom/stripe/android/exception/StripeException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private final typedEquals(Lcom/stripe/android/exception/StripeException;)Z
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/stripe/android/exception/StripeException;->stripeError:Lcom/stripe/android/StripeError;

    iget-object v1, p1, Lcom/stripe/android/exception/StripeException;->stripeError:Lcom/stripe/android/StripeError;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/stripe/android/exception/StripeException;->requestId:Ljava/lang/String;

    iget-object v1, p1, Lcom/stripe/android/exception/StripeException;->requestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/stripe/android/exception/StripeException;->statusCode:I

    iget v1, p1, Lcom/stripe/android/exception/StripeException;->statusCode:I

    if-ne v0, v1, :cond_2a

    invoke-virtual {p0}, Lcom/stripe/android/exception/StripeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/android/exception/StripeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 27
    move-object v0, p0

    check-cast v0, Lcom/stripe/android/exception/StripeException;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_13

    .line 28
    :cond_7
    instance-of v0, p1, Lcom/stripe/android/exception/StripeException;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/stripe/android/exception/StripeException;

    invoke-direct {p0, p1}, Lcom/stripe/android/exception/StripeException;->typedEquals(Lcom/stripe/android/exception/StripeException;)Z

    move-result p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public final getRequestId()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/stripe/android/exception/StripeException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/stripe/android/exception/StripeException;->statusCode:I

    return v0
.end method

.method public final getStripeError()Lcom/stripe/android/StripeError;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/stripe/android/exception/StripeException;->stripeError:Lcom/stripe/android/StripeError;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/stripe/android/exception/StripeException;->stripeError:Lcom/stripe/android/StripeError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/stripe/android/exception/StripeException;->requestId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/stripe/android/exception/StripeException;->statusCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/stripe/android/exception/StripeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x2

    .line 19
    new-array v0, v0, [Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/stripe/android/exception/StripeException;->requestId:Ljava/lang/String;

    if-eqz v1, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request-id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 21
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "\n"

    .line 22
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
