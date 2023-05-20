.class public final Lcom/vivo/push/b/y;
.super Lcom/vivo/push/g;
.source "StopServiceCommand.java"


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x7d8

    .line 19
    invoke-direct {p0, v0}, Lcom/vivo/push/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x7d8

    .line 13
    invoke-direct {p0, v0}, Lcom/vivo/push/g;-><init>(I)V

    .line 14
    iput-object p1, p0, Lcom/vivo/push/b/y;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final b(Lcom/vivo/push/a;)V
    .registers 4

    .line 35
    iget-object v0, p0, Lcom/vivo/push/b/y;->c:Ljava/lang/String;

    const-string v1, "package_name"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final c(Lcom/vivo/push/a;)V
    .registers 3

    const-string v0, "package_name"

    .line 41
    invoke-virtual {p1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/b/y;->c:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "StopServiceCommand"

    return-object v0
.end method
