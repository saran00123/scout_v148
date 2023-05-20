.class public final Lcom/vivo/push/d$a;
.super Ljava/lang/Object;
.source "PushClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/push/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/vivo/push/IPushActionListener;

.field b:Ljava/lang/Runnable;

.field c:[Ljava/lang/Object;

.field private d:Lcom/vivo/push/IPushActionListener;

.field private e:Lcom/vivo/push/b/c;


# direct methods
.method public constructor <init>(Lcom/vivo/push/b/c;Lcom/vivo/push/IPushActionListener;)V
    .registers 3

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput-object p1, p0, Lcom/vivo/push/d$a;->e:Lcom/vivo/push/b/c;

    .line 1041
    iput-object p2, p0, Lcom/vivo/push/d$a;->d:Lcom/vivo/push/IPushActionListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1071
    iget-object v0, p0, Lcom/vivo/push/d$a;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_c

    const-string v0, "PushClientManager"

    const-string v1, "task is null"

    .line 1072
    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1075
    :cond_c
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final varargs a(I[Ljava/lang/Object;)V
    .registers 3

    .line 1051
    iput-object p2, p0, Lcom/vivo/push/d$a;->c:[Ljava/lang/Object;

    .line 1053
    iget-object p2, p0, Lcom/vivo/push/d$a;->a:Lcom/vivo/push/IPushActionListener;

    if-eqz p2, :cond_9

    .line 1054
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    .line 1057
    :cond_9
    iget-object p2, p0, Lcom/vivo/push/d$a;->d:Lcom/vivo/push/IPushActionListener;

    if-eqz p2, :cond_10

    .line 1058
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_10
    return-void
.end method
