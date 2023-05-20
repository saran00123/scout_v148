.class public Lio/noties/markwon/movement/MovementMethodPlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "MovementMethodPlugin.java"


# instance fields
.field private final movementMethod:Landroid/text/method/MovementMethod;


# direct methods
.method constructor <init>(Landroid/text/method/MovementMethod;)V
    .registers 2
    .param p1    # Landroid/text/method/MovementMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    .line 37
    iput-object p1, p0, Lio/noties/markwon/movement/MovementMethodPlugin;->movementMethod:Landroid/text/method/MovementMethod;

    return-void
.end method

.method public static create()Lio/noties/markwon/movement/MovementMethodPlugin;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 25
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-static {v0}, Lio/noties/markwon/movement/MovementMethodPlugin;->create(Landroid/text/method/MovementMethod;)Lio/noties/markwon/movement/MovementMethodPlugin;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/text/method/MovementMethod;)Lio/noties/markwon/movement/MovementMethodPlugin;
    .registers 2
    .param p0    # Landroid/text/method/MovementMethod;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    new-instance v0, Lio/noties/markwon/movement/MovementMethodPlugin;

    invoke-direct {v0, p0}, Lio/noties/markwon/movement/MovementMethodPlugin;-><init>(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method


# virtual methods
.method public beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .registers 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    iget-object p2, p0, Lio/noties/markwon/movement/MovementMethodPlugin;->movementMethod:Landroid/text/method/MovementMethod;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
