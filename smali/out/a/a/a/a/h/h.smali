.class public final La/a/a/a/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:La/a/a/a/h/l;

.field public final synthetic b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;


# direct methods
.method public constructor <init>(La/a/a/a/h/l;Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;)V
    .registers 3

    iput-object p1, p0, La/a/a/a/h/h;->a:La/a/a/a/h/l;

    iput-object p2, p0, La/a/a/a/h/h;->b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, La/a/a/a/h/h;->a:La/a/a/a/h/l;

    iget-object v0, p0, La/a/a/a/h/h;->b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 2
    :cond_d
    sget-object v0, La/a/a/a/e/d$a;->a:La/a/a/a/e/d$a;

    invoke-virtual {p1, v0}, La/a/a/a/h/l;->a(La/a/a/a/e/d;)V

    return-void
.end method
