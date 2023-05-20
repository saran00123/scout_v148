.class public final La/a/a/a/e/t;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La/a/a/a/f/c;)Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;
    .registers 7
    .param p1    # La/a/a/a/f/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "errorData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/stripe3ds2/transaction/ErrorMessage;

    .line 1
    iget-object v1, p1, La/a/a/a/f/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_c

    goto :goto_e

    :cond_c
    const-string v1, ""

    .line 2
    :goto_e
    iget-object v2, p1, La/a/a/a/f/c;->d:Ljava/lang/String;

    .line 3
    iget-object v3, p1, La/a/a/a/f/c;->f:Ljava/lang/String;

    .line 4
    iget-object v4, p1, La/a/a/a/f/c;->g:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/android/stripe3ds2/transaction/ErrorMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;

    .line 6
    iget-object p1, p1, La/a/a/a/f/c;->j:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 7
    invoke-direct {v1, p1, v0}, Lcom/stripe/android/stripe3ds2/transaction/ProtocolErrorEvent;-><init>(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Lcom/stripe/android/stripe3ds2/transaction/ErrorMessage;)V

    return-object v1
.end method
