.class public final La/a/a/a/h/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/h/l;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/h/l;


# direct methods
.method public constructor <init>(La/a/a/a/h/l;)V
    .registers 2

    iput-object p1, p0, La/a/a/a/h/l$a;->a:La/a/a/a/h/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, La/a/a/a/h/l$a;->a:La/a/a/a/h/l;

    .line 1
    iget-object v1, v0, La/a/a/a/h/l;->p:La/a/a/a/g/a;

    .line 2
    invoke-interface {v1}, La/a/a/a/g/a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 3
    iput-object v1, v0, La/a/a/a/h/l;->g:Landroid/app/Dialog;

    .line 4
    iget-object v0, p0, La/a/a/a/h/l$a;->a:La/a/a/a/h/l;

    .line 5
    iget-object v0, v0, La/a/a/a/h/l;->l:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;

    .line 6
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData;->getUiType()Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$c;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_24

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_30

    :goto_24
    new-instance v0, La/a/a/a/e/d$c;

    iget-object v1, p0, La/a/a/a/h/l$a;->a:La/a/a/a/h/l;

    invoke-virtual {v1}, La/a/a/a/h/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/e/d$c;-><init>(Ljava/lang/String;)V

    goto :goto_3e

    :cond_30
    new-instance v0, La/a/a/a/e/d$b;

    iget-object v1, p0, La/a/a/a/h/l$a;->a:La/a/a/a/h/l;

    invoke-virtual {v1}, La/a/a/a/h/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/e/d$b;-><init>(Ljava/lang/String;)V

    goto :goto_3e

    :cond_3c
    sget-object v0, La/a/a/a/e/d$d;->a:La/a/a/a/e/d$d;

    :goto_3e
    iget-object v1, p0, La/a/a/a/h/l$a;->a:La/a/a/a/h/l;

    .line 7
    invoke-virtual {v1, v0}, La/a/a/a/h/l;->a(La/a/a/a/e/d;)V

    return-void
.end method
