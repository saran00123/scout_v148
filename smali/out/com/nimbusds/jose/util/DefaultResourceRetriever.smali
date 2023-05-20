.class public Lcom/nimbusds/jose/util/DefaultResourceRetriever;
.super Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;
.source "DefaultResourceRetriever.java"

# interfaces
.implements Lcom/nimbusds/jose/util/RestrictedResourceRetriever;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private disconnectAfterUse:Z

.field private proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    const/4 v0, 0x1

    .line 97
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(IIIZ)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .registers 5

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/nimbusds/jose/util/AbstractRestrictedResourceRetriever;-><init>(III)V

    .line 126
    iput-boolean p4, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    return-void
.end method

.method private getInputStream(Ljava/net/HttpURLConnection;I)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-lez p2, :cond_11

    .line 261
    new-instance p2, Lcom/nimbusds/jose/util/BoundedInputStream;

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getSizeLimit()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p2, p1, v0, v1}, Lcom/nimbusds/jose/util/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    move-object p1, p2

    :cond_11
    return-object p1
.end method


# virtual methods
.method public disconnectsAfterUse()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_b

    .line 249
    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1

    .line 251
    :cond_b
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_ce
    .catchall {:try_start_1 .. :try_end_5} :catchall_c9

    .line 199
    :try_start_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getConnectTimeout()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 200
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getReadTimeout()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 202
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 203
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 204
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    .line 211
    :cond_5b
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getSizeLimit()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->getInputStream(Ljava/net/HttpURLConnection;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_63
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_63} :catch_c7
    .catchall {:try_start_5 .. :try_end_63} :catchall_c5

    .line 212
    :try_start_63
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lcom/nimbusds/jose/util/IOUtils;->readInputStreamToString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_69} :catch_b2
    .catchall {:try_start_63 .. :try_end_69} :catchall_b0

    if-eqz v1, :cond_6e

    .line 213
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 216
    :cond_6e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 217
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12b

    if-gt v1, v3, :cond_91

    const/16 v3, 0xc8

    if-lt v1, v3, :cond_91

    .line 224
    new-instance v1, Lcom/nimbusds/jose/util/Resource;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/nimbusds/jose/util/Resource;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/ClassCastException; {:try_start_6b .. :try_end_87} :catch_c7
    .catchall {:try_start_6b .. :try_end_87} :catchall_c5

    .line 229
    iget-boolean v0, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    if-eqz v0, :cond_90

    if-eqz p1, :cond_90

    .line 230
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_90
    return-object v1

    .line 221
    :cond_91
    :try_start_91
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b0
    .catch Ljava/lang/ClassCastException; {:try_start_91 .. :try_end_b0} :catch_c7
    .catchall {:try_start_91 .. :try_end_b0} :catchall_c5

    :catchall_b0
    move-exception v2

    goto :goto_b4

    :catch_b2
    move-exception v0

    .line 211
    :try_start_b3
    throw v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b0

    :goto_b4
    if-eqz v1, :cond_c4

    if-eqz v0, :cond_c1

    .line 213
    :try_start_b8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_bb} :catch_bc
    .catch Ljava/lang/ClassCastException; {:try_start_b8 .. :try_end_bb} :catch_c7
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_c5

    goto :goto_c4

    :catch_bc
    move-exception v1

    :try_start_bd
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_c4

    :cond_c1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_c4
    :goto_c4
    throw v2
    :try_end_c5
    .catch Ljava/lang/ClassCastException; {:try_start_bd .. :try_end_c5} :catch_c7
    .catchall {:try_start_bd .. :try_end_c5} :catchall_c5

    :catchall_c5
    move-exception v0

    goto :goto_ed

    :catch_c7
    move-exception v0

    goto :goto_d2

    :catchall_c9
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_ed

    :catch_ce
    move-exception p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 227
    :goto_d2
    :try_start_d2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open HTTP(S) connection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_ed
    .catchall {:try_start_d2 .. :try_end_ed} :catchall_c5

    .line 229
    :goto_ed
    iget-boolean v1, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    if-eqz v1, :cond_f6

    if-eqz p1, :cond_f6

    .line 230
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 232
    :cond_f6
    throw v0
.end method

.method public setDisconnectsAfterUse(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->disconnectAfterUse:Z

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/nimbusds/jose/util/DefaultResourceRetriever;->proxy:Ljava/net/Proxy;

    return-void
.end method
