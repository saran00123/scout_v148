.class public final Lcom/vivo/push/c/c;
.super Lcom/vivo/push/e;
.source "InitTask.java"


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/vivo/push/e;-><init>(Lcom/vivo/push/g;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vivo/push/g;)V
    .registers 2

    .line 21
    iget-object p1, p0, Lcom/vivo/push/c/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getInstance(Landroid/content/Context;)Lcom/vivo/push/cache/ClientConfigManagerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->isDebug()Z

    move-result p1

    invoke-static {p1}, Lcom/vivo/push/util/n;->a(Z)V

    return-void
.end method
