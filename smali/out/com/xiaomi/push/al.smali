.class Lcom/xiaomi/push/al;
.super Lcom/xiaomi/push/ak$b;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ak;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/push/ak;Lcom/xiaomi/push/ak$a;ZLjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/xiaomi/push/al;->a:Lcom/xiaomi/push/ak;

    iput-boolean p3, p0, Lcom/xiaomi/push/al;->a:Z

    iput-object p4, p0, Lcom/xiaomi/push/al;->a:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/ak$b;-><init>(Lcom/xiaomi/push/ak$a;)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 1

    invoke-super {p0}, Lcom/xiaomi/push/ak$b;->a()V

    return-void
.end method

.method b()V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/push/al;->a:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/xiaomi/push/al;->a:Lcom/xiaomi/push/ak;

    invoke-static {v0}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/al;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1b
    return-void
.end method
