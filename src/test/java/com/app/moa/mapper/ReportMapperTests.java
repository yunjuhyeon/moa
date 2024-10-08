package com.app.moa.mapper;


import com.app.moa.domain.report.Pagination;
import com.app.moa.domain.report.ReportDTO;
import com.app.moa.mapper.report.ReportMapper;
import com.app.moa.service.report.ReportService;
import com.app.moa.service.report.ReportServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
@Slf4j
public class ReportMapperTests {
    @Autowired
    private ReportMapper reportMapper;
    @Autowired
    private ReportDTO reportDTO;
    @Autowired
    private ReportServiceImpl reportServiceImpl;
    @Autowired
    private ReportService reportService;

//    @Autowired
//    private ReportDTO reportDTO;

    @Test
    public void testReport() {
        ReportDTO reportDTO = new ReportDTO();

        reportDTO.setPostId(146L); // 게시글 번호 (예: 1L)
        reportDTO.setMemberId(21L); // 멤버 번호 (예: 1L)
        reportDTO.setReportReason("부적합한 내용5"); // 신고 사유
        reportDTO.setReportStatus(2L); // 신고사항 처리상태 (예: 1L)

        // DAO 또는 Mapper를 통해 데이터베이스에 삽입
        reportMapper.report(reportDTO.toVO());
    }

    @Test
    public void testSelectAll() {      //목록 순서
        Pagination pagination = new Pagination();
        pagination.setPage(1);
        pagination.setTotal(reportMapper.selectCount());
        pagination.progress();
        List<ReportDTO> reports = reportMapper.selectAll(pagination);
        log.info("{}", reports.size());
//        log.info("{}", reportMapper);
//        log.info("{}", reportDTO);
        reports.stream().map(ReportDTO::toString).forEach(log::info);
    }

//    게시글 수정(작업중)
    @Test
    public void testUpdate() {
        ReportDTO reportDTO = new ReportDTO();
        reportDTO.setPostId(145L);
        reportDTO.setPostTitle("수정해볼게?");
        reportDTO.setPostContent("수정해볼게 내용!");
        reportService.update(reportDTO.toVO());
    }

//    게시글 삭제
    @Test
    public void testDelete() {
        Long id = 82L;
        reportService.delete(id);
        log.info("Deleted post with ID: {}", id);
    }


}