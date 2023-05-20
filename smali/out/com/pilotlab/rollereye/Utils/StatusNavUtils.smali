.class public Lcom/pilotlab/rollereye/Utils/StatusNavUtils;
.super Ljava/lang/Object;
.source "StatusNavUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearFocusNotAle(Landroid/view/Window;)V
    .registers 2

    const/16 v0, 0x8

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public static focusNotAle(Landroid/view/Window;)V
    .registers 2

    const/16 v0, 0x8

    .line 122
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public static hideNavigationBar(Landroid/view/Window;)V
    .registers 3

    .line 93
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 94
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Utils/StatusNavUtils$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/Utils/StatusNavUtils$1;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    return-void
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;I)V
    .registers 4

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    const/high16 v0, 0xc000000

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 50
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void

    .line 53
    :cond_21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_2c

    const/high16 p1, 0x8000000

    .line 54
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_2c
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .registers 4

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_21

    const/high16 v0, 0xc000000

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 24
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void

    .line 29
    :cond_21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_2c

    const/high16 p1, 0x4000000

    .line 30
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_2c
    return-void
.end method

.method public static setStatusNavBarColor(Landroid/app/Activity;II)V
    .registers 5

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_24

    const/high16 v0, 0xc000000

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 71
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 74
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 76
    invoke-virtual {p0, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void

    .line 79
    :cond_24
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_34

    const/high16 p1, 0x4000000

    .line 80
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    const/high16 p1, 0x8000000

    .line 82
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    :cond_34
    return-void
.end method
