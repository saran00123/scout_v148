.class public final La/a/a/a/h/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/a/a/a/h/a0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/h/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/h/u;


# direct methods
.method public constructor <init>(La/a/a/a/h/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La/a/a/a/h/u$a;->a:La/a/a/a/h/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, La/a/a/a/h/u$a;->a:La/a/a/a/h/u;

    .line 1
    iput-object p1, v0, La/a/a/a/h/u;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, La/a/a/a/h/u;->getOnClickListener$3ds2sdk_release()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object v0, p0, La/a/a/a/h/u$a;->a:La/a/a/a/h/u;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_f
    return-void
.end method
