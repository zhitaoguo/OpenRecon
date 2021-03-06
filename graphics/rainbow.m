function c = rainbow(m)

  if nargin<1, m = size(get(gcf,'colormap'),1); end

  base = [   0     0     0
             8     0     8
            14     0    14
            24     0    23
            34     0    33
            44     0    43
            54     0    53
            64     0    63
            74     0    72
            85     0    83
            95     0    93
            97     0   102
            92     0   112
            87     0   122
            82     0   132
            77     0   142
            73     0   151
            68     0   161
            63     0   171
            58     0   181
            53     0   191
            49     0   200
            44     0   202
            39     0   205
            34     0   208
            29     0   211
            25     0   212
            19     6   215
            15    15   218
             9    22   221
             5    29   223
             1    38   226
             0    45   229
             0    53   232
             0    61   234
             0    68   236
             0    76   239
             0    84   242
             0    92   245
             0    99   247
             0   107   250
             0   115   253
             0   122   252
             0   130   246
             0   138   240
             0   145   233
             0   153   227
             0   161   221
             0   168   215
             0   176   209
             0   184   203
             0   191   197
             0   199   191
             0   202   184
             0   206   178
             0   210   172
             0   213   166
             0   217   160
             0   220   154
             0   224   148
             0   227   142
             0   231   135
             0   234   129
             0   238   123
             0   241   117
             0   245   111
             0   249   103
             0   253    95
             0   255    91
             0   255    87
             0   255    80
             0   255    74
             0   255    68
             1   255    62
            13   255    56
            25   255    50
            38   255    43
            50   255    38
            62   255    31
            74   255    25
            87   255    19
            99   255    13
           111   255     7
           123   255     1
           136   255     0
           148   255     0
           160   255     0
           172   255     0
           184   255     0
           197   255     0
           209   255     0
           221   255     0
           233   255     0
           246   255     0
           255   252     0
           255   244     0
           255   237     0
           255   229     0
           255   221     0
           255   214     0
           255   206     0
           255   198     0
           255   191     0
           255   183     0
           255   175     0
           255   168     0
           255   160     0
           255   152     0
           255   145     0
           255   137     0
           255   129     0
           255   121     0
           255   114     0
           255   106     0
           255    98     0
           255    91     0
           255    83     0
           255    75     0
           255    68     0
           255    60     0
           255    52     0
           255    45     0
           255    37     0
           255    29     0
           255    22     0
           255    14     0
           255     5     0
           255     0     0
         ]/255;

  % interpolate colormap
  n = length(base);
  t = linspace(1,n,m);
  n = 1:n;
  r = interp1(n,base(:,1),t,'linear');
  g = interp1(n,base(:,2),t,'linear');
  b = interp1(n,base(:,3),t,'linear');
  
  % compose colormap
  c = [r(:),g(:),b(:)];
