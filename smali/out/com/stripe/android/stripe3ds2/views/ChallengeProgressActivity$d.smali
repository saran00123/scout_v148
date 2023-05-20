.class public final Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity$d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "La/a/a/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity;


# direct methods
.method public constructor <init>(Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity$d;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity$d;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity;

    invoke-static {v0}, Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity;->access$getNullableArgs$p(Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity;)Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity$a;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2
    iget-object v0, v0, Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity$a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    if-eqz v0, :cond_12

    .line 3
    new-instance v1, La/a/a/a/c/e;

    invoke-direct {v1, v0}, La/a/a/a/c/e;-><init>(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;)V

    goto :goto_14

    :cond_12
    sget-object v1, La/a/a/a/c/a$b;->b:La/a/a/a/c/a$b;

    :goto_14
    move-object v4, v1

    new-instance v0, La/a/a/a/c/a;

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity$d;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeProgressActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "applicationContext"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, La/a/a/a/c/a;-><init>(Landroid/content/Context;La/a/a/a/c/a$a;Lkotlin/coroutines/CoroutineContext;La/a/a/a/e/r;La/a/a/a/c/d;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method
