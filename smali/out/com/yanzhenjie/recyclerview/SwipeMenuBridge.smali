.class public Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;
.super Ljava/lang/Object;
.source "SwipeMenuBridge.java"


# instance fields
.field private final mController:Lcom/yanzhenjie/recyclerview/Controller;

.field private final mDirection:I

.field private final mPosition:I


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/Controller;II)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->mController:Lcom/yanzhenjie/recyclerview/Controller;

    .line 29
    iput p2, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->mDirection:I

    .line 30
    iput p3, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->mPosition:I

    return-void
.end method


# virtual methods
.method public closeMenu()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->mController:Lcom/yanzhenjie/recyclerview/Controller;

    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/Controller;->smoothCloseMenu()V

    return-void
.end method

.method public getDirection()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->mDirection:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->mPosition:I

    return v0
.end method
