.class public final Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;-><init>()V
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
.field public final synthetic a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;


# direct methods
.method public constructor <init>(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$b;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 12

    .line 1
    new-instance v10, La/a/a/a/c/a;

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$b;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "applicationContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, La/a/a/a/c/e;

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity$b;->a:Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;

    invoke-static {v0}, Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;->b(Lcom/stripe/android/stripe3ds2/views/ChallengeActivity;)La/a/a/a/h/r;

    move-result-object v0

    .line 2
    iget-object v0, v0, La/a/a/a/h/r;->a:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 3
    invoke-direct {v2, v0}, La/a/a/a/c/e;-><init>(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, La/a/a/a/c/a;-><init>(Landroid/content/Context;La/a/a/a/c/a$a;Lkotlin/coroutines/CoroutineContext;La/a/a/a/e/r;La/a/a/a/c/d;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v10
.end method
