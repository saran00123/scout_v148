.class public final La/a/a/a/e/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/e/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/a/e/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:La/a/a/a/e/t;

.field public final b:La/a/a/a/d/j;

.field public final c:La/a/a/a/e/c;

.field public final d:La/a/a/a/d/e;

.field public final e:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

.field public final f:Ljava/lang/String;

.field public final g:La/a/a/a/c/c;

.field public final h:La/a/a/a/e/r;

.field public final i:La/a/a/a/h/z;

.field public final j:La/a/a/a/e/q;

.field public final k:La/a/a/a/e/k;


# direct methods
.method public constructor <init>(La/a/a/a/e/c;La/a/a/a/d/e;Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Ljava/lang/String;La/a/a/a/c/c;La/a/a/a/e/r;La/a/a/a/h/z;La/a/a/a/e/q;La/a/a/a/e/k;)V
    .registers 11
    .param p1    # La/a/a/a/e/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # La/a/a/a/d/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # La/a/a/a/c/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # La/a/a/a/e/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # La/a/a/a/h/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # La/a/a/a/e/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # La/a/a/a/e/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "areqParamsFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ephemeralKeyPairGenerator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageVersionRegistry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkReferenceNumber"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressViewFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jwsValidator"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "challengeStatusReceiverProvider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/e/c0$a;->c:La/a/a/a/e/c;

    iput-object p2, p0, La/a/a/a/e/c0$a;->d:La/a/a/a/d/e;

    iput-object p3, p0, La/a/a/a/e/c0$a;->e:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    iput-object p4, p0, La/a/a/a/e/c0$a;->f:Ljava/lang/String;

    iput-object p5, p0, La/a/a/a/e/c0$a;->g:La/a/a/a/c/c;

    iput-object p6, p0, La/a/a/a/e/c0$a;->h:La/a/a/a/e/r;

    iput-object p7, p0, La/a/a/a/e/c0$a;->i:La/a/a/a/h/z;

    iput-object p8, p0, La/a/a/a/e/c0$a;->j:La/a/a/a/e/q;

    iput-object p9, p0, La/a/a/a/e/c0$a;->k:La/a/a/a/e/k;

    new-instance p1, La/a/a/a/e/t;

    invoke-direct {p1}, La/a/a/a/e/t;-><init>()V

    iput-object p1, p0, La/a/a/a/e/c0$a;->a:La/a/a/a/e/t;

    new-instance p1, La/a/a/a/d/j;

    invoke-direct {p1, p5}, La/a/a/a/d/j;-><init>(La/a/a/a/c/c;)V

    iput-object p1, p0, La/a/a/a/e/c0$a;->b:La/a/a/a/d/j;

    return-void
.end method

.method public synthetic constructor <init>(La/a/a/a/e/c;La/a/a/a/d/e;Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Ljava/lang/String;La/a/a/a/c/c;La/a/a/a/e/r;La/a/a/a/h/z;La/a/a/a/e/q;La/a/a/a/e/k;I)V
    .registers 23

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_e

    sget-object v1, La/a/a/a/e/r;->a:La/a/a/a/e/r$a;

    invoke-virtual {v1}, La/a/a/a/e/r$a;->a()La/a/a/a/e/r;

    move-result-object v1

    move-object v8, v1

    goto :goto_10

    :cond_e
    move-object/from16 v8, p6

    :goto_10
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    new-instance v1, La/a/a/a/h/z$b;

    invoke-direct {v1}, La/a/a/a/h/z$b;-><init>()V

    move-object v9, v1

    goto :goto_1d

    :cond_1c
    move-object v9, v2

    :goto_1d
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2a

    new-instance v1, La/a/a/a/e/q$a;

    move-object/from16 v7, p5

    invoke-direct {v1, v7}, La/a/a/a/e/q$a;-><init>(La/a/a/a/c/c;)V

    move-object v10, v1

    goto :goto_2d

    :cond_2a
    move-object/from16 v7, p5

    move-object v10, v2

    :goto_2d
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_35

    sget-object v0, La/a/a/a/e/k$a;->b:La/a/a/a/e/k$a;

    move-object v11, v0

    goto :goto_36

    :cond_35
    move-object v11, v2

    :goto_36
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v11}, La/a/a/a/e/c0$a;-><init>(La/a/a/a/e/c;La/a/a/a/d/e;Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Ljava/lang/String;La/a/a/a/c/c;La/a/a/a/e/r;La/a/a/a/h/z;La/a/a/a/e/q;La/a/a/a/e/k;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;Ljava/security/PublicKey;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;ZLa/a/a/a/h/z$a;Landroid/content/Intent;I)Lcom/stripe/android/stripe3ds2/transaction/Transaction;
    .registers 35
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/security/PublicKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # La/a/a/a/h/z$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;",
            "Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;",
            "Z",
            "La/a/a/a/h/z$a;",
            "Landroid/content/Intent;",
            "I)",
            "Lcom/stripe/android/stripe3ds2/transaction/Transaction;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v15, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v17, p6

    move/from16 v14, p7

    move-object/from16 v18, p8

    move-object/from16 v21, p9

    move/from16 v22, p10

    const-string v1, "directoryServerId"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "rootCerts"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "directoryServerPublicKey"

    move-object/from16 v2, p3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "sdkTransactionId"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "brand"

    move-object/from16 v2, p8

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, La/a/a/a/e/c0$a;->d:La/a/a/a/d/e;

    invoke-interface {v1}, La/a/a/a/d/e;->a()Ljava/security/KeyPair;

    move-result-object v13

    new-instance v23, La/a/a/a/e/y;

    move-object/from16 v1, v23

    iget-object v2, v0, La/a/a/a/e/c0$a;->c:La/a/a/a/e/c;

    iget-object v3, v0, La/a/a/a/e/c0$a;->i:La/a/a/a/h/z;

    iget-object v4, v0, La/a/a/a/e/c0$a;->k:La/a/a/a/e/k;

    iget-object v5, v0, La/a/a/a/e/c0$a;->e:Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;

    iget-object v6, v0, La/a/a/a/e/c0$a;->f:Ljava/lang/String;

    iget-object v7, v0, La/a/a/a/e/c0$a;->j:La/a/a/a/e/q;

    iget-object v8, v0, La/a/a/a/e/c0$a;->a:La/a/a/a/e/t;

    move-object/from16 p1, v1

    iget-object v1, v0, La/a/a/a/e/c0$a;->b:La/a/a/a/d/j;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, La/a/a/a/d/k;->e:La/a/a/a/d/k$a;

    iget-object v1, v1, La/a/a/a/d/j;->a:La/a/a/a/c/c;

    move-object/from16 p2, v2

    const-string v2, "errorReporter"

    .line 2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, La/a/a/a/d/k;

    move-object/from16 v16, v1

    const/4 v2, 0x0

    int-to-byte v2, v2

    move-object/from16 p3, v3

    move/from16 v3, p7

    invoke-direct {v1, v3, v2, v2}, La/a/a/a/d/k;-><init>(ZBB)V

    .line 3
    iget-object v1, v0, La/a/a/a/e/c0$a;->h:La/a/a/a/e/r;

    move-object/from16 v19, v1

    iget-object v1, v0, La/a/a/a/e/c0$a;->g:La/a/a/a/c/c;

    move-object/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct/range {v1 .. v22}, La/a/a/a/e/y;-><init>(La/a/a/a/e/c;La/a/a/a/h/z;La/a/a/a/e/k;Lcom/stripe/android/stripe3ds2/transaction/MessageVersionRegistry;Ljava/lang/String;La/a/a/a/e/q;La/a/a/a/e/t;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/security/KeyPair;ZLjava/util/List;La/a/a/a/d/i;Lcom/stripe/android/stripe3ds2/init/ui/StripeUiCustomization;La/a/a/a/h/z$a;La/a/a/a/e/r;La/a/a/a/c/c;Landroid/content/Intent;I)V

    return-object v23
.end method
