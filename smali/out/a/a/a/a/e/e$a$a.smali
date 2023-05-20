.class public final La/a/a/a/e/e$a$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/e/e$a;->a(La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.android.stripe3ds2.transaction.ChallengeActionHandler$Default"
    f = "ChallengeActionHandler.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1
    }
    l = {
        0x4f,
        0x52
    }
    m = "executeChallengeRequest"
    n = {
        "this",
        "creqData",
        "this",
        "creqData"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:La/a/a/a/e/e$a;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(La/a/a/a/e/e$a;Lkotlin/coroutines/Continuation;)V
    .registers 3

    iput-object p1, p0, La/a/a/a/e/e$a$a;->c:La/a/a/a/e/e$a;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, La/a/a/a/e/e$a$a;->a:Ljava/lang/Object;

    iget p1, p0, La/a/a/a/e/e$a$a;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, La/a/a/a/e/e$a$a;->b:I

    iget-object p1, p0, La/a/a/a/e/e$a$a;->c:La/a/a/a/e/e$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, La/a/a/a/e/e$a;->a(La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
