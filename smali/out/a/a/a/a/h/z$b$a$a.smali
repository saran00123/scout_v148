.class public final La/a/a/a/h/z$b$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/h/z$b$a;-><init>(Landroid/content/Context;La/a/a/a/h/z$a;Lcom/stripe/android/stripe3ds2/init/ui/UiCustomization;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "La/a/a/a/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/h/z$b$a;


# direct methods
.method public constructor <init>(La/a/a/a/h/z$b$a;)V
    .registers 2

    iput-object p1, p0, La/a/a/a/h/z$b$a$a;->a:La/a/a/a/h/z$b$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, La/a/a/a/h/z$b$a$a;->a:La/a/a/a/h/z$b$a;

    invoke-virtual {v0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/j;->a(Landroid/view/LayoutInflater;)La/a/a/a/a/j;

    move-result-object v0

    const-string v1, "StripeProgressViewLayout\u2026g.inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
