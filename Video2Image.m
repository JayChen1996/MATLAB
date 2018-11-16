function r = Video2Image(videopath,storedir)
    obj = VideoReader(videopath);
    s = 1;
    while obj.CurrentTime<obj.Duration
        frame = read(obj,s);
        imwrite(frame,strcat(obj.Path,'\',storepath,'\',num2str(s),'.jpg'));
        s = s+1;
    end
end