.class public Lcom/miui/filtersdk/utils/OpenGlUtils;
.super Ljava/lang/Object;
.source "OpenGlUtils.java"


# direct methods
.method public static getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 208
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    move-object p0, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p0, v0

    .line 204
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 208
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 210
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-object p0

    :goto_3
    if-eqz p0, :cond_2

    .line 208
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 213
    :cond_2
    :goto_4
    throw p1
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b31

    .line 223
    invoke-static {p0, v1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "Load Program"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "Vertex Shader Failed"

    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const v3, 0x8b30

    .line 228
    invoke-static {p1, v3}, Lcom/miui/filtersdk/utils/OpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Fragment Shader Failed"

    .line 230
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 234
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 235
    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 236
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 237
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v4, 0x8b82

    .line 238
    invoke-static {v3, v4, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 239
    aget v0, v0, v2

    if-gtz v0, :cond_2

    const-string p0, "Linking Failed"

    .line 240
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 243
    :cond_2
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 244
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3
.end method

.method private static loadShader(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 250
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 251
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 252
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p0, 0x0

    const v1, 0x8b81

    .line 253
    invoke-static {p1, v1, v0, p0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 254
    aget v0, v0, p0

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Compilation\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Load Shader Failed"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    return p1
.end method

.method public static loadTexture(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 110
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 112
    aget v3, v1, v2

    if-eqz v3, :cond_0

    .line 115
    invoke-static {p0, p1}, Lcom/miui/filtersdk/utils/OpenGlUtils;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 118
    aget v3, v1, v2

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2800

    const/16 v5, 0x2601

    .line 121
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2801

    .line 122
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2802

    const v5, 0x812f

    .line 123
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2803

    .line 124
    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 126
    invoke-static {v4, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 129
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    :cond_0
    aget p0, v1, v2

    if-nez p0, :cond_1

    new-array p0, v0, [Ljava/lang/Object;

    aput-object p1, p0, v2

    const-string p1, "loadTexture failed,path:%s"

    .line 133
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenGlUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 137
    :cond_1
    aget p0, v1, v2

    return p0
.end method
