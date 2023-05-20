.class public final Lcom/stripe/android/exception/StripeException$Companion;
.super Ljava/lang/Object;
.source "StripeException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/exception/StripeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/exception/StripeException$Companion;",
        "",
        "()V",
        "create",
        "Lcom/stripe/android/exception/StripeException;",
        "throwable",
        "",
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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/stripe/android/exception/StripeException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Throwable;)Lcom/stripe/android/exception/StripeException;
    .registers 11
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p1, Lcom/stripe/android/exception/StripeException;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/stripe/android/exception/StripeException;

    goto :goto_4a

    .line 48
    :cond_c
    instance-of v0, p1, Lorg/json/JSONException;

    if-eqz v0, :cond_19

    new-instance v0, Lcom/stripe/android/exception/APIException;

    invoke-direct {v0, p1}, Lcom/stripe/android/exception/APIException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    check-cast p1, Lcom/stripe/android/exception/StripeException;

    goto :goto_4a

    .line 49
    :cond_19
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/stripe/android/exception/APIConnectionException;->Companion:Lcom/stripe/android/exception/APIConnectionException$Companion;

    check-cast p1, Ljava/io/IOException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/stripe/android/exception/APIConnectionException$Companion;->create$stripe_release$default(Lcom/stripe/android/exception/APIConnectionException$Companion;Ljava/io/IOException;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/android/exception/APIConnectionException;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/exception/StripeException;

    goto :goto_4a

    .line 50
    :cond_2a
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_42

    new-instance v0, Lcom/stripe/android/exception/InvalidRequestException;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v1, v0

    move-object v6, p1

    .line 50
    invoke-direct/range {v1 .. v8}, Lcom/stripe/android/exception/InvalidRequestException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    check-cast p1, Lcom/stripe/android/exception/StripeException;

    goto :goto_4a

    .line 54
    :cond_42
    new-instance v0, Lcom/stripe/android/exception/APIException;

    invoke-direct {v0, p1}, Lcom/stripe/android/exception/APIException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    check-cast p1, Lcom/stripe/android/exception/StripeException;

    :goto_4a
    return-object p1
.end method
